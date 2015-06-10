var name;
var socket;
var hasControl;

function startClient() {
  hasControl = false;
  if (requestName()) {
    connectToServer();
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
    sendUpdatedCameraInformation(getCameraData())
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
