var express = require('express');
var _ = require('underscore');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var nodes = { };
var usernames = {};
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

io.sockets.on('connection', function(socket) {
	socket.on('adduser', function(username) {
		socket.username = username;
		usernames[username] = username;

    if (Object.keys(usernames).length == 1)
    {
      activeUserName = username;
      grantControl(socket);
    }

		io.sockets.emit('updateusers', usernames);
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
	
	socket.on('objectCreated', function(objectData){
    if (socket.username === activeUserName)
    {
      socket.broadcast.emit('objectCreated', objectData);
    }
	});

	socket.on('disconnect', function(){
		delete usernames[socket.username];

		io.sockets.emit('updateusers', usernames);
	});
});
