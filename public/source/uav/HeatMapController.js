function HeatMapController(){
	var lx,hx,ly,hy;
	var imgWidth, imgHeight;
	var tagMapdiv;
	var heatMapdiv;
	var imagecanvas;
	var taggedcanvas;
	var heatcanvas;
	var tagMap;
	var heatMap;
	var img;
	var imgview;
}

HeatMapController.prototype.createHeatMap = function(imageLoc, leftBound,rightBound,lowerBound,upperBound,imgview){
	this.tagMapdiv = document.createElement('div');
	this.heatMapdiv = document.createElement('div');
	this.imagecanvas = document.createElement('canvas');
	this.lx = leftBound;
	this.hx = rightBound;
	this.ly = lowerBound;
	this.hy = upperBound;
	var hmc = this;
	this.img = new Image();
	this.img.onload = function(){
		hmc.imagecanvas.width = this.width;
		hmc.imagecanvas.height = this.height;
		hmc.imgWidth = hmc.img.width;
		hmc.imgHeight = hmc.img.height;
		var ctx = hmc.imagecanvas.getContext("2d");
		ctx.drawImage(hmc.img,0,0);
		
		var config = {
			container: hmc.tagMapdiv,
			maxOpacity: 1,
			minOpacity: 1,
			radius: 5,
			width: hmc.imgWidth,
			height: hmc.imgHeight,
			gradient: {
				'1': 'black'
			  }
		};
		hmc.tagMap = h337.create(config);
		
		var config = {
			container: hmc.heatMapdiv,
			maxOpacity: 1,
			minOpacity: .2,
			radius: 10,
			width: hmc.imgWidth,
			height: hmc.imgHeight,
			backgroundColor: 'rgba(0,0,1,.2)'
		};
		hmc.heatMap = h337.create(config);
	}
	this.img.src=imageLoc;
	this.imgview = imgview;
}

HeatMapController.prototype.addPoint = function(cameraLocation,targetLocation,rotation,fov){
	var ix = cameraLocation.x;
	var iy = cameraLocation.z;
	var tx = targetLocation.x;
	var ty = targetLocation.z;
	var x = Math.floor(this.imgWidth*(tx-this.lx)/(this.hx-this.lx));
	var y = Math.floor(this.imgHeight*(ty-this.ly)/(this.hy-this.ly));
	var scaledx = Math.floor(this.imgWidth*(tx-this.lx)/(this.hx-this.lx));
	var scaledy = Math.floor(this.imgHeight*(ty-this.ly)/(this.hy-this.ly));
	var height = Math.floor(Math.sqrt(Math.pow(scaledx-x,2)+Math.pow(scaledy-y,2)));
	var width = Math.floor(height*Math.tan(fov*Math.PI/180/2)*2);
	var degree = rotation*(180/Math.PI);
	this.tagMap.addData({ x: x, y: y, value: 1,h:height,w:width,angle:rotation});
}

HeatMapController.prototype.addViewPoint = function(cameraLocation,targetLocation,rotation,fov){
	var ix = cameraLocation.x;
	var iy = cameraLocation.z;
	var tx = targetLocation.x;
	var ty = targetLocation.z;
	var x = Math.floor(this.imgWidth*(tx-this.lx)/(this.hx-this.lx));
	var y = Math.floor(this.imgHeight*(ty-this.ly)/(this.hy-this.ly));
	var scaledx = Math.floor(this.imgWidth*(tx-this.lx)/(this.hx-this.lx));
	var scaledy = Math.floor(this.imgHeight*(ty-this.ly)/(this.hy-this.ly));
	var height = Math.floor(Math.sqrt(Math.pow(scaledx-x,2)+Math.pow(scaledy-y,2)));
	var width = Math.floor(height*Math.tan(fov*Math.PI/180/2)*2);
	var degree = rotation*(180/Math.PI);
	this.tagMap.addData({ x: x, y: y, value: 1,h:height,w:width,angle:rotation});
}


//make tag point different from view point function


HeatMapController.prototype.submitImage = function(){
	var sendcanvas = document.createElement('canvas');
	this.taggedcanvas = this.tagMapdiv.firstChild;
	var ctx = sendcanvas.getContext("2d");
	sendcanvas.width=this.imgWidth;
	sendcanvas.height=this.imgHeight;
	ctx.save();
	ctx.translate(this.imgWidth,this.imgHeight);
	ctx.rotate(180 * (Math.PI / 180));
	ctx.drawImage(this.imagecanvas,0,0);
	ctx.drawImage(this.taggedcanvas,0,0);
	ctx.restore();
	var dataURL = sendcanvas.toDataURL();
	var socket = io.connect('/');
	socket.on('connect', function() {
		socket.emit('getImage',dataURL);
	});

}

HeatMapController.prototype.setImage = function(img){
	this.imgview = img;
	var sendcanvas = document.createElement('canvas');
	this.taggedcanvas = this.tagMapdiv.firstChild;
	this.heatcanvas = this.heatMapdiv.firstChild;
	var ctx = sendcanvas.getContext("2d");
	sendcanvas.width=this.imgWidth;
	sendcanvas.height=this.imgHeight;
	ctx.save();
	ctx.translate(this.imgWidth,this.imgHeight);
	ctx.rotate(180 * (Math.PI / 180));
	ctx.drawImage(this.imagecanvas,0,0);
	ctx.drawImage(this.heatcanvas,0,0);
	ctx.drawImage(this.taggedcanvas,0,0);
	ctx.restore();
	var dataURL = sendcanvas.toDataURL();
	this.imgview.src=dataURL;
}

HeatMapController.prototype.updateImage = function(){
	if (this.imgview && this.tagMapdiv){
		var sendcanvas = document.createElement('canvas');
		sendcanvas.setAttribute("id","heatViewer");
		this.taggedcanvas = this.tagMapdiv.firstChild;
		this.heatcanvas = this.heatMapdiv.firstChild;
		var ctx = sendcanvas.getContext("2d");
		sendcanvas.width=this.imgWidth;
		sendcanvas.height=this.imgHeight;
		ctx.save();
		ctx.translate(this.imgWidth,this.imgHeight);
		ctx.rotate(180 * (Math.PI / 180));
		ctx.drawImage(this.imagecanvas,0,0);
		ctx.drawImage(this.heatcanvas,0,0);
		ctx.drawImage(this.taggedcanvas,0,0);
		ctx.restore();
		var imgctx = this.imgview.getContext("2d");
		this.imgview.width = this.imgWidth;
		this.imgview.height = this.imgHeight;
		imgctx.drawImage(sendcanvas,0,0);
	}
}
