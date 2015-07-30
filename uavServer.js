// All camera updates received by the server in timeframes of this length will be chained together into a single message
/*var cameraChainTime = 500;

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
var io;*/

var uavsession;

function grantControl(socket) {
  activeUserName = socket.username;
  uavsession.emitToSockets('controlgrant', socket.username);
  uavsession.emitToSockets('serverNotification', 'Control given to ' + wrapUsername(socket.username));
  userListChanged();
}

function wrapUsername(username)
{
    return '<b><u>' + username + '</u></b>';
}

function userListChanged() {
  uavsession.emitToSockets('updateusers', uavsession.usernames, uavsession.activeUserName);
}

/** Returns true if there is a user with the given username, or false otherwise */
function isUserConnected(username) {
  var index = uavsession.userQueue.indexOf(username);
  if (index >= 0) return true;
  else return false;
}

module.exports = {
  setupSocket: function (IO,socket,curSession){
  uavsession = curSession;
  uavsession.io = IO;
  socket.on('adduser', function(username) {
    if (isUserConnected(username)) {
      socket.emit('serverResponse', { request: "adduser", success: false, reason: "username is in use" });
      //socket.disconnect();
    }
    else {
      uavsession.userQueue.push(username);
      socket.username = username;
	  uavsession.sockets.push(socket);
      uavsession.usernames[username] = username;
		console.log(uavsession.usernames + "  user names");
      if (Object.keys(uavsession.usernames).length == 1) {
        uavsession.activeUserName = username;
        grantControl(socket);
      }

      userListChanged();
	  socket.emit('requestObjects', uavsession.objectList);
      uavsession.emitToSockets('requestCamera');
	  socket.emit('nightMode', uavsession.nightMode);
      uavsession.emitToSockets('serverNotification', wrapUsername(username) + ' has joined.');
    }
  });

  socket.on('transferControl', function(targetUsername) {
    if (socket.username === uavsession.activeUserName
      && uavsession.usernames[targetUsername] !== null
      && uavsession.usernames[targetUsername] !== undefined
      && uavsession.userQueue.indexOf(targetUsername) >= 0) {
      grantControl( {username: targetUsername} );
    }
	});

  socket.on('objectCreated', function(objectData){
    if (socket.username === uavsession.activeUserName)
    {
      createObject(objectData);
	  uavsession.emitToSockets('objectCreated', objectData);
      //uavsession.emitToSockets('objectCreated', objectData);
      var positonString = objectData.pos_x.toFixed(2) + ', ' + objectData.pos_y.toFixed(2) + ', ' + objectData.pos_z.toFixed(2);
      uavsession.emitToSockets('serverNotification', 'Object created at (' + positonString + ')');
    }
  });
  
  socket.on('deleteid', function(id){
    if (socket.username === uavsession.activeUserName)
    {
      deleteObject(id);
	  uavsession.emitToSockets('objectDelete', id);
    }
  });
  
  socket.on('removeid', function(id){
    if (socket.username === uavsession.activeUserName)
    {
      deleteObject(id);
	  uavsession.emitToSockets('objectRemove', id);
    }
  });

  socket.on('nightMode', function(objectData){
    if (socket.username === uavsession.activeUserName)
    {
	  uavsession.nightMode = objectData;
      uavsession.emitToSockets('nightMode', objectData);
      var mode = (objectData) ? 'Night Mode' : 'Day Mode';
      uavsession.emitToSockets('serverNotification', 'Switched to ' + mode);
    }
  });

  socket.on('requestObjects', function(){
    if (socket.username === uavsession.activeUserName)
    {
      uavsession.emitToSockets('requestObjects', uavsession.objectList);
    }
  });

  socket.on('deleteObject', function(objectID){
      if (socket.username === uavsession.activeUserName)
      {
          var deleted = deleteObject(objectID);
          uavsession.emitToSockets('objectDeleted', deleted);
          // TODO: braodcast server notification
      }
  });
  
    socket.on('objectUpdate', function(object){
      if (socket.username === uavsession.activeUserName)
      {
          updateObject(object);
          uavsession.emitToSockets('objectUpdate', object);
      }
  });

  socket.on('cameraUpdate', function(cameraData) {
    if (socket.username === uavsession.activeUserName) {
      uavsession.emitToSockets('cameraUpdate', cameraData);
      var currentTime = new Date().getTime();
      cameraData.updateType = 'cameraUpdate';
      cameraData.updateStart = currentTime;
      cameraData.updateEnd = currentTime;

      if (uavsession.lastCameraMessage == null) {
        uavsession.lastCameraMessage = cameraData;
      }
      else if (uavsession.lastCameraMessage.updateStart + 500 > cameraData.updateStart) {
        // chain the updates
        cameraData.updateStart = uavsession.lastCameraMessage.updateStart;
        uavsession.lastCameraMessage = cameraData;
      }
      else {
        uavsession.messageList.push(uavsession.lastCameraMessage);
        uavsession.lastCameraMessage = cameraData;
      }
    }
  });

  socket.on('disconnect', function() {
    delete uavsession.usernames[socket.username];
    var index = uavsession.userQueue.indexOf(socket.username);
    if (index >= 0) {
      uavsession.userQueue.splice(index, 1);
    }
    uavsession.emitToSockets('serverNotification', wrapUsername(socket.username) + ' has left.');
    grantControl({username: uavsession.userQueue[0]});
    userListChanged();
  });
	}
};


function createObject(objectData) {
		var date = new Date();
		objectData.id = date.getTime();
		uavsession.objectList[objectData.id] = objectData;
};
function deleteObject(objectID) {
		if (objectID in uavsession.objectList) {
			delete uavsession.objectList[objectID];
			return true;
		} else {
			return false;
		}
};
function updateObject(objectData) {
		if (objectData.id in uavsession.objectList) {
			uavsession.objectList[objectData.id] = objectData;
		}
};