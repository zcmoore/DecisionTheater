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

var Session = require('./Session.js');

var citysession;

function grantControl(socket) {
  citysession.activeUserName = socket.username;
  citysession.emitToSockets('controlgrant', socket.username);
  citysession.emitToSockets('serverNotification', 'Control given to ' + wrapUsername(socket.username));
  userListChanged();
}

function wrapUsername(username)
{
    return '<b><u>' + username + '</u></b>';
}

function userListChanged() {
  citysession.emitToSockets('updateusers', citysession.usernames, citysession.activeUserName);
}

/** Returns true if there is a user with the given username, or false otherwise */
function isUserConnected(username) {
  var index = citysession.userQueue.indexOf(username);
  if (index >= 0) return true;
  else return false;
}

module.exports = {
  setupSocket: function (IO,socket,curSession){
  citysession = curSession;
  citysession.io = IO;
  socket.on('adduser', function(username) {
    if (isUserConnected(username)) {
		socket.emit('serverResponse', { 
			request: "adduser", 
			success: false, 
			reason: "username is in use" });
      //socket.disconnect();
    }
    else {
      citysession.userQueue.push(username);
      socket.username = username;
	  citysession.sockets.push(socket);
      citysession.usernames[username] = username;
      if (Object.keys(citysession.usernames).length == 1) {
        citysession.activeUserName = username;
        grantControl(socket);
      }

      userListChanged();
	  socket.emit('requestObjects', citysession.objectList);
      citysession.emitToSockets('requestCamera');
	  socket.emit('nightMode', citysession.nightMode);
      citysession.emitToSockets('serverNotification', wrapUsername(username) + ' has joined.');
    }
  });

  socket.on('transferControl', function(targetUsername) {
    if (socket.username === citysession.activeUserName
      && citysession.usernames[targetUsername] !== null
      && citysession.usernames[targetUsername] !== undefined
      && citysession.userQueue.indexOf(targetUsername) >= 0) {
      grantControl( {username: targetUsername} );
    }
	});

  socket.on('objectCreated', function(objectData){
    if (socket.username === citysession.activeUserName)
    {
      createObject(objectData);
	  citysession.emitToSockets('objectCreated', objectData);
      //citysession.emitToSockets('objectCreated', objectData);
      var positonString = objectData.pos_x.toFixed(2) + ', ' + objectData.pos_y.toFixed(2) + ', ' + objectData.pos_z.toFixed(2);
      citysession.emitToSockets('serverNotification', 'Object created at (' + positonString + ')');
    }
  });
  
  socket.on('fillScene', function(positionArray){
    if (socket.username === citysession.activeUserName)
    {
	  var objectArray = [];
	  for (j = 0; j < positionArray.length;j++){
		  var objectData = {
				id: "-1",
				pos_x: positionArray[j].x,
				pos_y: positionArray[j].y,
				pos_z: positionArray[j].z,
				rot_x: 0,
				rot_y: 0,
				rot_z: 0
			};
		  createObject(objectData,j);
		  objectArray.push(objectData);
	  }
	  
	  for (j = 0; j < objectArray.length;j++){
		  citysession.emitToSockets('objectCreated', objectArray[j]);
		  var positonString = objectArray[j].pos_x.toFixed(2) + ', ' + objectArray[j].pos_y.toFixed(2) + ', ' + objectArray[j].pos_z.toFixed(2);
		  citysession.emitToSockets('serverNotification', 'Object created at (' + positonString + ')');
	  }
    }
  });
  
  socket.on('deleteid', function(id){
    if (socket.username === citysession.activeUserName)
    {
      deleteObject(id);
	  citysession.emitToSockets('objectDelete', id);
    }
  });
  
  socket.on('removeid', function(id){
    if (socket.username === citysession.activeUserName)
    {
      deleteObject(id);
	  citysession.emitToSockets('objectRemove', id);
    }
  });

  socket.on('nightMode', function(objectData){
    if (socket.username === citysession.activeUserName)
    {
	  citysession.nightMode = objectData;
      citysession.emitToSockets('nightMode', objectData);
      var mode = (objectData) ? 'Night Mode' : 'Day Mode';
      citysession.emitToSockets('serverNotification', 'Switched to ' + mode);
    }
  });

  socket.on('requestObjects', function(){
    if (socket.username === citysession.activeUserName)
    {
      citysession.emitToSockets('requestObjects', citysession.objectList);
    }
  });

  socket.on('deleteObject', function(objectID){
      if (socket.username === citysession.activeUserName)
      {
          var deleted = deleteObject(objectID);
          citysession.emitToSockets('objectDeleted', deleted);
          // TODO: braodcast server notification
      }
  });
  
    socket.on('objectUpdate', function(object){
      if (socket.username === citysession.activeUserName)
      {
          updateObject(object);
          citysession.emitToSockets('objectUpdate', object);
      }
  });

  socket.on('cameraUpdate', function(cameraData) {
    if (socket.username === citysession.activeUserName) {
      citysession.emitToSockets('cameraUpdate', cameraData);
      var currentTime = new Date().getTime();
      cameraData.updateType = 'cameraUpdate';
      cameraData.updateStart = currentTime;
      cameraData.updateEnd = currentTime;

      if (citysession.lastCameraMessage == null) {
        citysession.lastCameraMessage = cameraData;
      }
      else if (citysession.lastCameraMessage.updateStart + 500 > cameraData.updateStart) {
        // chain the updates
        cameraData.updateStart = citysession.lastCameraMessage.updateStart;
        citysession.lastCameraMessage = cameraData;
      }
      else {
        citysession.messageList.push(citysession.lastCameraMessage);
        citysession.lastCameraMessage = cameraData;
      }
    }
  });

  socket.on('disconnect', function() {
    delete citysession.usernames[socket.username];
    var index = citysession.userQueue.indexOf(socket.username);
    if (index >= 0) {
      citysession.userQueue.splice(index, 1);
    }
    citysession.emitToSockets('serverNotification', wrapUsername(socket.username) + ' has left.');
    grantControl({username: citysession.userQueue[0]});
    userListChanged();
	
  });
	}
};


function createObject(objectData) {
		var date = new Date();
		objectData.id = date.getTime();
		citysession.objectList[objectData.id] = objectData;
};

function createObject(objectData,increment) {
		var date = new Date();
		objectData.id = date.getTime() + increment;
		citysession.objectList[objectData.id] = objectData;
};

function deleteObject(objectID) {
		if (objectID in citysession.objectList) {
			delete citysession.objectList[objectID];
			return true;
		} else {
			return false;
		}
};
function updateObject(objectData) {
		if (objectData.id in citysession.objectList) {
			citysession.objectList[objectData.id] = objectData;
		}
};