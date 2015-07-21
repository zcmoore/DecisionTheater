var express = require('express');
var _ = require('underscore');
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io').listen(server);
var cityServer = require('./cityServer');


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

app.get('/uav', function(req, res) {
  res.render('uav');
});

io.sockets.on('connection', function(socket) {

  cityServer.citySocket(io,socket);

});
