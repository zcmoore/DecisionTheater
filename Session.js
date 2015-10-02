module.exports = function Session() {
	this.cameraChainTime = 500;
	this.sockets = [];
	this.usernames = {};
	this.activeSocket = null;
	this.userQueue = [];
	this.activeUserName = null;
	this.viewingMode = false;
	this.nightMode = false;
	this.objectList = {};
	this.messageList = [];
	this.lastCameraMessage = null;
	this.io = null;
	this.emitToSockets = function() {
		if (this.sockets.length > 0) {
			for (i = 0; i < this.sockets.length; i++) {
				this.sockets[i].emit.apply(this.sockets[i], arguments);
			}
		}
	};
	this.emitToSocketsNotActive = function() {
		if (this.sockets.length > 0) {
			for (i = 0; i < this.sockets.length; i++) {
				if (this.sockets[i].username != this.activeUserName) {
					this.sockets[i].emit.apply(this.sockets[i], arguments);
				}
			}
		}
	};
};