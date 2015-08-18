var name;
var socket;
var hasControl;
var connectionEstablished = false;
var needActorGeneration = false;

function startClient() {
	hasControl = false;
	if (requestName()) {
		connectToServer();

		$("#notifications").empty();
		$("#notifications").append('<div>' + getTimestamp() + ' Logged in as <b><u>' + name + '</u></b></div>');
	}
}

function connectToServer() {
	socket = io.connect('/',{query: "appid=2"});

	socket.on('connect', function() {
		// serverside call
		socket.emit('adduser', name);

		connectionEstablished = true;
		populateCity();
	});

	socket.on('serverNotification', function(message) {
		$("#notifications").append('<div>' + getTimestamp() + ' ' + message + '</div>');
	});

	socket.on('updateusers', function(users, activeUserName) {
		$('#users').empty();
		$.each(users, function(username, value) {
			if (username === activeUserName) {
				$('#users').append('<div><b><u>' + username + '</u></b></div>');
			} else {
				$('#users').append('<div>' + username + '</div>');
			}
		});

		// Add double click listeners
		$.each($("#users").children(), (function(index, userEntry) {
			userEntry.addEventListener("dblclick", function() {
				socket.emit('transferControl', $(this).html());
			});
		}));
	});

	socket.on('controlgrant', function(username) {
		hasControl = (name === username);
		if (!hasControl) {
			$("#menudiv").collapse("hide");
		} else {
			$("#menudiv").collapse("show");
		}
	});

	socket.on('cameraUpdate', function(data) {
		onCameraUpdate(data);
	});

	socket.on('requestCamera', function() {
		sendUpdatedCameraInformation(getCameraData());
	});

	socket.on('objectCreated', function(data) {
		onObjectCreate(data);
	});

	socket.on('objectDelete', function(id) {
		deleteObjectByID(id);
	});

	socket.on('objectRemove', function(id) {
		removeObjectByID(id);
	});

	socket.on('objectUpdate', function(data) {
		updateObjectByID(data);
	});

	socket.on('requestObjects', function(objects) {
		onObjectListCreate(objects);
	});
	
	socket.on('requestTags', function(tags) {
		addTags(tags);
	});
	
	socket.on('newTag', function(tag) {
		addTag(tag);
	});

	socket.on('nightMode', function(bool) {
		updateNightMode(bool);
	});

	socket.on('actorUpdate', function(actorShellArray) {
		if (resourcesLoaded) {
			receiveShells(actorShellArray);
		}
	});

	socket.on('populateScene', function() {
		needActorGeneration = true;
		if (resourcesLoaded) {
			generateActors();
		}
	});

	socket.on('serverResponse', function(response) {
		// if server rejected login
		if (!response.success && response.request == "adduser") {
			alert(response.reason);
			window.location.reload(true);
		}
		// if server accepted any request
		else {
			// DO NOTHING
		}
	});
}

function sendShells() {
	socket.emit('actorUpdate', actorShells);
}

function requestName() {
	name = window.prompt("Please enter your name", "");
	if (name.trim().length === 0) {
		alert("Name required");
		return requestName();
	} else if (name === null || name == "null") {
		$('#invalidLogin').show();
		$('#validLogin').hide();
		return false;
	} else {
		$('#validLogin').show();
		$('#invalidLogin').hide();
		return true;
	}
}

function sendUpdatedCameraInformation(cameraData) {
	socket.emit('cameraUpdate', cameraData);
}

function sendObjectCreation(object) {
	socket.emit('objectCreated', object);
}

function sendRemovalNotice(id) {
	socket.emit('removeid', id);
}

function sendDeletionNotice(id) {
	socket.emit('deleteid', id);
}

function sendObjectUpdate(object) {
	socket.emit('objectUpdate', object);
}

function sendUpdateLightMode(bool) {
	socket.emit('nightMode', bool);
}

function relinquishControls() {
	hasControl = false;
	socket.emit('relinquishControl');
}

function sendTag(tag) {
	socket.emit('addTag', tag);
}

function requestControls() {
	/*
	  var message = {
	      type: "requestControl"
	  };
	  var jsonMessage = JSON.stringify(message);
	  socket.send(jsonMessage);
	  */
}

function getTimestamp() {
	var date = new Date();
	var day = ('0' + date.getDate()).slice(-2);
	var month = ('0' + (date.getMonth() + 1)).slice(-2);
	var year = date.getFullYear();
	var hour = date.getHours();
	var min = ('0' + date.getMinutes()).slice(-2);
	var sec = ('0' + date.getSeconds()).slice(-2);
	if (hour > 12) {
		hour -= 12;
	}
	hour = ('0' + hour).slice(-2);
	return month + '/' + day + '/' + year + ' ' + hour + ':' + min + ':' + sec;
}
