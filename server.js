var express = require('express');
var _ = require('underscore');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var fs = require('fs');

eval(fs.readFileSync('Queue.js').toString());

var nodes = { };
var usernames = { };
var users = { };
var sockets = { };
var userQueue = new Queue();
var activeUserName;
server.listen(process.env.PORT || 8080);

app.set('view engine', 'ejs');
app.set('view options', { layout: false });
app.use(express.methodOverride());
app.use(express.bodyParser());
app.use(app.router);
app.use('/public', express.static('public'));

app.get('/', function (req, res) {
  res.render('index');
});

function grantControl(socket)
{
  var message = "Control granted to " + socket.username;
  socket.emit('controlgrant', { granted: true });
  socket.broadcast.emit('servernotification', message);
}

function revokeControl(socket)
{
  var message = "Control relinquished from " + socket.username;
  socket.emit('controlgrant', { granted: false, queued: false });
  socket.broadcast.emit('servernotification', message);
}

function changeControl(fromSocket, toSocket)
{
  var message = { from: fromSocket.username, to: toSocket.username };
  io.sockets.emit('controlchange', message, usernames);
}

function userListChanged()
{
  io.sockets.emit('updateusers', usernames, activeUserName);
}

io.sockets.on('connection', function(socket) {
	socket.on('adduser', function(username) {
		socket.username = username;
    sockets[username] = socket;
		usernames[username] = username;

    if (Object.keys(usernames).length == 1)
    {
      activeUserName = username;
      grantControl(socket);
    }

    userListChanged();
	});

	socket.on('relinquishControl', function(){
    if (socket.username === activeUserName)
    {
      activeUserName = null;
      // TODO: reassign control
      revokeControl(socket);
    }
	});

	socket.on('cameraUpdate', function(cameraData){
    if (socket.username === activeUserName)
    {
      socket.broadcast.emit('cameraUpdate', cameraData);
    }
	});

	socket.on('disconnect', function(){
		delete usernames[socket.username];

    userListChanged();
	});
});
