var name;
var socket;
var hasControl;

function startClient() {
  hasControl = false;
  if (requestName()) {
    connectToServer();
    $("#notifications").empty();
    $("#notifications").append('Logged in as <b><u>' + name + '</u></b>');
  }
}

function connectToServer() {
  socket = io.connect('/');

  socket.on('connect', function() {
    // serverside call
    socket.emit('adduser', name);
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
  });

  socket.on('cameraUpdate', function(data) {
    onCameraUpdate(data);
  });  

  socket.on('requestCamera', function() {
    sendUpdatedCameraInformation(getCameraData());
  });
  
  socket.on('objectCreated', function(data) {
    onObjectCreate(data);
	console.log("does this get called on the inital client?");
  });
  
  socket.on('requestObjects', function(objects) {
    onObjectListCreate(objects);
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

function sendObjectCreation(object){
  socket.emit('objectCreated',object);
}

function relinquishControls() {
    hasControl = false;
    socket.emit('relinquishControl');
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
