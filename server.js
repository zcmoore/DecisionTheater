var express = require('express');
var _ = require('underscore');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var cityServer = require('./cityServer');
var uavServer = require('./uavServer');

var sessions = [];

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
  res.render('cityindex');
});

app.get('/uav', function(req, res) {
  res.render('uavindex');
});

io.sockets.on('connection', function(socket) {
  var sessionid = socket.handshake.query.appid;
  if (socket.handshake.query.appid == '1'){
	if(!sessions[sessionid]){
		sessions[sessionid] = new Session();
	};
	cityServer.setupSocket(io,socket,sessions[sessionid]);
  }
  else if (socket.handshake.query.appid == '2') {
    if(!sessions[sessionid]){
		sessions[sessionid] = new Session();
	}
	uavServer.setupSocket(io,socket,sessions[sessionid]);
  }

});

function Session(){
	this.cameraChainTime = 500;
	this.sockets = [];
	this.usernames = {};
	this.activeSocket = null;
	this.userQueue = [];
	this.activeUserName = null;
	this.viewingMode = false;
	this.nightMode = false;
	this.objectList={};
	this.messageList = [];
	this.lastCameraMessage = null;
	this.io = null;
	this.emitToSockets = function(){
		if (this.sockets.length > 0){
			for (i =0; i < this.sockets.length; i++){
				this.sockets[i].emit.apply(this.sockets[i],arguments);
			}
		}
	}
}

function printArgs(){
	
}