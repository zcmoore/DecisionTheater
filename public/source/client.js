var name;
var socket;
var hasControl;

function startClient() {
  hasControl = false;
  requestName();
  connectToServer();
  $("#notifications").append('Logged in as <b><u>' + name + '</u></b>');
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
        $('#users').append('<div><u>' + username + '</u></div>');
      } else {
        $('#users').append('<div>' + username + '</div>');
      }
    });
  });

  socket.on('controlgrant', function(data) {
    hasControl = data.granted;
  });

  socket.on('cameraUpdate', function(data) {
    onCameraUpdate(data);
  });

  socket.on('servernotification', function(message) {});
}

function requestName() {
  name = window.prompt("Please enter your name", "");
  if (name.trim().length === 0) {
    alert("Name required");
    requestName();
  } else if (name === null || name == "null") {
    $('#invalidLogin').show();
    $('#validLogin').hide();
  } else {
    $('#validLogin').show();
    $('#invalidLogin').hide();
  }
}

function sendUpdatedCameraInformation(cameraData) {
  socket.emit('cameraUpdate', cameraData);
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
