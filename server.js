var express = require('express');
var _ = require('underscore');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var fs = require('fs');

eval(fs.readFileSync('Queue.js').toString());

var nodes = {};
var usernames = {};
var users = {};
var activeSocket = null;
var userQueue = new Queue();
var activeUserName;
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
  res.render('index');
});

function grantControl(socket) {
  activeUserName = socket.username;
  io.sockets.emit('controlgrant', socket.username);
  userListChanged();
}

function userListChanged() {
  io.sockets.emit('updateusers', usernames, activeUserName);
}

io.sockets.on('connection', function(socket) {
  socket.on('adduser', function(username) {
    socket.username = username;
    usernames[username] = username;

    if (Object.keys(usernames).length == 1) {
      activeUserName = username;
      grantControl(socket);
    }

    userListChanged();
    io.sockets.emit('requestCamera');
  });

  socket.on('relinquishControl', function() {
    if (socket.username === activeUserName) {
      activeUserName = null;
      // TODO: reassign control
      grantControl({username: null});
    }
  });

  socket.on('transferControl', function(targetUsername) {
    if (socket.username === activeUserName) {
      grantControl( {username: targetUsername} );
    }
  });

  socket.on('cameraUpdate', function(cameraData) {
    if (socket.username === activeUserName) {
      currentCamera = cameraData;
      socket.broadcast.emit('cameraUpdate', cameraData);
    }
  });

  socket.on('disconnect', function() {
    delete usernames[socket.username];

    userListChanged();
  });
});
