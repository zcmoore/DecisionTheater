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
var util = require('util');
var Session = require('./Session.js');

var uavsession;

function UavSession(){
	Session.call(this);
	this.cameraChainTime = 500;
	this.nodes = {};
	this.usernames = {};
	this.activeSocket = null;
	this.userQueue = [];
	this.activeUserName;
	this.viewingMode = false;
	this.nightMode = false;
	this.objectList = {};
	this.messageList = [];
	this.lastCameraMessage = null;
	this.tags = [];
	this.actors = [];
}
UavSession.prototype = new Session();

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
  UavSession: UavSession,
  setupSocket: function (IO,socket,curSession){
  uavsession = curSession;
  uavsession.io = IO;
  socket.on('adduser', function(username) {
		if (isUserConnected(username)) {
			socket.emit('serverResponse', {
				request: "adduser",
				success: false,
				reason: "username is in use"
			});
			//socket.disconnect();
		} else {
			uavsession.userQueue.push(username);
			socket.username = username;
			uavsession.sockets.push(socket);
			uavsession.usernames[username] = username;

			if (Object.keys(uavsession.usernames).length == 1) {
				uavsession.activeUserName = username;
				grantControl(socket);
				socket.emit('populateScene');
			}
		  else {
			socket.emit('actorUpdate', uavsession.actors);
		  }
			userListChanged();
			socket.emit('requestObjects', uavsession.objectList);
			uavsession.emitToSockets('requestCamera');
			socket.emit('nightMode', uavsession.nightMode);
			uavsession.emitToSocketsNotActive('serverNotification', wrapUsername(username) + ' has joined.');
		}
	});

	socket.on('transferControl', function(targetUsername) {
		if (socket.username === uavsession.activeUserName && uavsession.usernames[targetUsername] !== null && uavsession.usernames[targetUsername] !== undefined && uavsession.userQueue.indexOf(targetUsername) >= 0) {
			grantControl({
				username: targetUsername
			});
		}
	});

	socket.on('actorUpdate', function(actorShells) {
		if (socket.username === uavsession.activeUserName) {
			uavsession.actors = actorShells;
			uavsession.emitToSocketsNotActive('actorUpdate', actorShells);
		}
	});

	socket.on('addTag', function(tag) {
		if (socket.username === uavsession.activeUserName) {
			uavsession.tags.push(tag);
		}
	});

	socket.on('objectCreated', function(objectData) {
		if (socket.username === uavsession.activeUserName) {
			createObject(objectData);
			uavsession.emitToSockets('objectCreated', objectData);;
			var positonString = objectData.pos_x.toFixed(2) + ', ' + objectData.pos_y.toFixed(2) + ', ' + objectData.pos_z.toFixed(2);
			uavsession.emitToSockets('serverNotification', 'Object created at (' + positonString + ')');
		}
	});

	socket.on('deleteid', function(id) {
		if (socket.username === uavsession.activeUserName) {
			deleteObject(id);
			uavsession.emitToSockets('objectDelete', id);
		}
	});

	socket.on('removeid', function(id) {
		if (socket.username === uavsession.activeUserName) {
			deleteObject(id);
			uavsession.emitToSockets('objectRemove', id);
		}
	});

	socket.on('nightMode', function(objectData) {
		if (socket.username === uavsession.activeUserName) {
			uavsession.nightMode = objectData;
			uavsession.emitToSocketsNotActive('nightMode', objectData);
			var mode = (objectData) ? 'Night Mode' : 'Day Mode';
			uavsession.emitToSockets('serverNotification', 'Switched to ' + mode);
		}
	});

	socket.on('requestObjects', function() {
		if (socket.username === uavsession.activeUserName) {
			uavsession.emitToSocketsNotActive('requestObjects', objectList);
		}
	});

	socket.on('deleteObject', function(objectID) {
		if (socket.username === uavsession.activeUserName) {
			var deleted = deleteObject(objectID);
			uavsession.emitToSocketsNotActive('objectDeleted', deleted);
		}
	});

	socket.on('objectUpdate', function(object) {
		if (socket.username === uavsession.activeUserName) {
			updateObject(object);
			uavsession.emitToSocketsNotActive('objectUpdate', object);
		}
	});

	socket.on('cameraUpdate', function(cameraData) {
		if (socket.username === uavsession.activeUserName) {
			uavsession.emitToSocketsNotActive('cameraUpdate', cameraData);
			var currentTime = new Date().getTime();
			cameraData.updateType = 'cameraUpdate';
			cameraData.updateStart = currentTime;
			cameraData.updateEnd = currentTime;

			if (uavsession.lastCameraMessage == null) {
				lastCameraMessage = cameraData;
			} else if (uavsession.lastCameraMessage.updateStart + 500 > cameraData.updateStart) {
				// chain the updates
				cameraData.updateStart = lastCameraMessage.updateStart;
				uavsession.lastCameraMessage = cameraData;
			} else {
				messageList.push(uavsession.lastCameraMessage);
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
		grantControl({
			username: uavsession.userQueue[0]
		});
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