var name;
var socket;
var hasControl;

function startClient() {
  hasControl = false;
  if (requestName()) {
      connectToServer();
      
    $("#notifications").empty();
    $("#notifications").append(getTimestamp() +' Logged in as <b><u>' + name + '</u></b>');
  }
}

function connectToServer() {
  socket = io.connect('/');

  socket.on('connect', function() {
    // serverside call
    socket.emit('adduser', name);
  });

  socket.on('updateusers', function (users, activeUserName) {
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
  });
  
  socket.on('objectDelete', function(id) {
    deleteObjectByID(id);
  });
  
  socket.on('requestObjects', function(objects) {
    onObjectListCreate(objects);
  });
  
  socket.on('nightMode', function(bool){
	updateNightMode(bool);
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

function sendDeletionNotice(id){
  socket.emit('deleteid',id);
}

function sendUpdateLightMode(bool){
  socket.emit('nightMode',bool);
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
