var express = require('express');
var _ = require('underscore');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);

// All camera updates received by the server in timeframes of this length will be chained together into a single message
var cameraChainTime = 500;

var nodes = {};
var usernames = {};
var activeSocket = null;
var userQueue = [];
var activeUserName;
var viewingMode = false;
var nightMode = false;
var objectList={};
var messageList = [];
var lastCameraMessage = null;

server.listen(process.env.PORT || 8080);

app.set('view engine', 'ejs');
app.set('view options', {
  layout: false
});
app.use(express.methodOverride());
app.use(express.bodyParser());
app.use(app.router);
app.use('/public', express.static('public'));

app.get('/', function(req, res) {
  res.render('mainIndex');
});

app.get('/cityPlanning', function(req, res) {
  res.render('index');
});


function grantControl(socket) {
  activeUserName = socket.username;
  io.sockets.emit('controlgrant', socket.username);
  io.sockets.emit('serverNotification', 'Control given to ' + wrapUsername(socket.username));
  userListChanged();
}

function wrapUsername(username)
{
    return '<b><u>' + username + '</u></b>';
}

function userListChanged() {
  io.sockets.emit('updateusers', usernames, activeUserName);
}

/** Returns true if there is a user with the given username, or false otherwise */
function isUserConnected(username) {
  var index = userQueue.indexOf(username);
  if (index >= 0) return true;
  else return false;
}

io.sockets.on('connection', function(socket) {
  socket.on('adduser', function(username) {
    if (isUserConnected(username)) {
      socket.emit('serverResponse', { request: "adduser", success: false, reason: "username is in use" });
      //socket.disconnect();
    }
    else {
      userQueue.push(username);
      socket.username = username;
      usernames[username] = username;

      if (Object.keys(usernames).length == 1) {
        activeUserName = username;
        grantControl(socket);
      }

      userListChanged();
	  socket.emit('requestObjects', objectList);
      io.sockets.emit('requestCamera');
	  socket.emit('nightMode', nightMode);
      socket.broadcast.emit('serverNotification', wrapUsername(username) + ' has joined.');
    }
  });

  socket.on('transferControl', function(targetUsername) {
    if (socket.username === activeUserName
      && usernames[targetUsername] !== null
      && usernames[targetUsername] !== undefined
      && userQueue.indexOf(targetUsername) >= 0) {
      grantControl( {username: targetUsername} );
    }
	});

  socket.on('objectCreated', function(objectData){
    if (socket.username === activeUserName)
    {
      createObject(objectData);
	  io.sockets.emit('objectCreated', objectData);
      //socket.broadcast.emit('objectCreated', objectData);
      var positonString = objectData.pos_x.toFixed(2) + ', ' + objectData.pos_y.toFixed(2) + ', ' + objectData.pos_z.toFixed(2);
      io.sockets.emit('serverNotification', 'Object created at (' + positonString + ')');
    }
  });
  
  socket.on('deleteid', function(id){
    if (socket.username === activeUserName)
    {
      deleteObject(id);
	  io.sockets.emit('objectDelete', id);
    }
  });
  
  socket.on('removeid', function(id){
    if (socket.username === activeUserName)
    {
      deleteObject(id);
	  io.sockets.emit('objectRemove', id);
    }
  });

  socket.on('nightMode', function(objectData){
    if (socket.username === activeUserName)
    {
	  nightMode = objectData;
      socket.broadcast.emit('nightMode', objectData);
      var mode = (objectData) ? 'Night Mode' : 'Day Mode';
      io.sockets.emit('serverNotification', 'Switched to ' + mode);
    }
  });

  socket.on('requestObjects', function(){
    if (socket.username === activeUserName)
    {
      socket.broadcast.emit('requestObjects', objectList);
    }
  });

  socket.on('deleteObject', function(objectID){
      if (socket.username === activeUserName)
      {
          var deleted = deleteObject(objectID);
          socket.broadcast.emit('objectDeleted', deleted);
          // TODO: braodcast server notification
      }
  });
  
    socket.on('objectUpdate', function(object){
      if (socket.username === activeUserName)
      {
          updateObject(object);
          socket.broadcast.emit('objectUpdate', object);
      }
  });

  socket.on('cameraUpdate', function(cameraData) {
    if (socket.username === activeUserName) {
      socket.broadcast.emit('cameraUpdate', cameraData);
      var currentTime = new Date().getTime();
      cameraData.updateType = 'cameraUpdate';
      cameraData.updateStart = currentTime;
      cameraData.updateEnd = currentTime;

      if (lastCameraMessage == null) {
        lastCameraMessage = cameraData;
      }
      else if (lastCameraMessage.updateStart + 500 > cameraData.updateStart) {
        // chain the updates
        cameraData.updateStart = lastCameraMessage.updateStart;
        lastCameraMessage = cameraData;
      }
      else {
        messageList.push(lastCameraMessage);
        lastCameraMessage = cameraData;
      }
    }
  });

  socket.on('disconnect', function() {
    delete usernames[socket.username];
    var index = userQueue.indexOf(socket.username);
    if (index >= 0) {
      userQueue.splice(index, 1);
    }
    io.sockets.emit('serverNotification', wrapUsername(socket.username) + ' has left.');
    grantControl({username: userQueue[0]});
    userListChanged();
  });
});

function createObject(objectData) {
    var date = new Date();
	objectData.id = date.getTime();
    objectList[objectData.id] = objectData;
}

function deleteObject(objectID) {
    if (objectID in objectList) {
        delete objectList[objectID];
        return true;
    } else {
        return false;
    }
}

function updateObject(objectData) {
    if (objectData.id in objectList) {
        objectList[objectData.id] = objectData;
    }
}
