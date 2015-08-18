/*Example code; some functions have to be performed after heatMapIsCreated and not instantly;

var hmc;

function test(){
	var loc = "public/HeatMap/models/Scene/Quadrant1.jpg";
	var heatmapdiv = document.createElement('div');
	hmc = new HeatMapController();
	hmc.createHeatMap(loc,heatmapdiv,-20.5,20.5,-20.5,20.5);
}*/

// hmc = heatmapcontroller
function HeatMapController(){
	var lx,hx,ly,hy;
	var imgWidth, imgHeight;
	var heatmapdiv;
	var imagecanvas;
	var heatcanvas;
	var heatmap;
	var img;
	var imgview;
}

HeatMapController.prototype.createHeatMap = function(imageLoc, leftBound,rightBound,lowerBound,upperBound,imgview){
	this.heatmapdiv = document.createElement('div');
	this.imagecanvas = document.createElement('canvas');
	var heatmapInstance;
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
			container: hmc.heatmapdiv,
			maxOpacity: .75,
			minOpacity: .3,
			radius: 50,
			width: hmc.imgWidth,
			height: hmc.imgHeight
		};
		hmc.heatmap = h337.create(config);
	}
	this.img.src=imageLoc;
	this.imgview = imgview;
}

HeatMapController.prototype.addPoint = function(cameraLocation,targetLocation,rotation,fov){
	var ix = cameraLocation.x;
	var iy = cameraLocation.z;
	var tx = targetLocation.x;
	var ty = targetLocation.z;
	var x = Math.floor(this.imgWidth*(ix-this.lx)/(this.hx-this.lx));
	var y = Math.floor(this.imgHeight*(iy-this.ly)/(this.hy-this.ly));
	var scaledx = Math.floor(this.imgWidth*(tx-this.lx)/(this.hx-this.lx));
	var scaledy = Math.floor(this.imgHeight*(ty-this.ly)/(this.hy-this.ly));
	var height = Math.floor(Math.sqrt(Math.pow(scaledx-x,2)+Math.pow(scaledy-y,2)));
	var width = Math.floor(height*Math.tan(fov*Math.PI/180/2)*2);
	var degree = rotation*(180/Math.PI);
	this.heatmap.addData({ x: x, y: y, value: .35,h:height,w:width,angle:rotation});
}


HeatMapController.prototype.submitImage = function(){
	var sendcanvas = document.createElement('canvas');
	this.heatcanvas = this.heatmapdiv.firstChild;
	var ctx = sendcanvas.getContext("2d");
	sendcanvas.width=this.imgWidth;
	sendcanvas.height=this.imgHeight;
	ctx.drawImage(this.imagecanvas,0,0);
	ctx.drawImage(this.heatcanvas,0,0);
	var dataURL = sendcanvas.toDataURL();
	var socket = io.connect('/');
	socket.on('connect', function() {
		socket.emit('getImage',dataURL);
	});

}

HeatMapController.prototype.setImage = function(img){
	this.imgview = img;
	var sendcanvas = document.createElement('canvas');
	this.heatcanvas = this.heatmapdiv.firstChild;
	var ctx = sendcanvas.getContext("2d");
	sendcanvas.width=this.imgWidth;
	sendcanvas.height=this.imgHeight;
	ctx.drawImage(this.imagecanvas,0,0);
	ctx.drawImage(this.heatcanvas,0,0);
	var dataURL = sendcanvas.toDataURL();
	this.imgview.src=dataURL;
}

HeatMapController.prototype.updateImage = function(){
	if (this.imgview && this.heatmapdiv){
		var sendcanvas = document.createElement('canvas');
		sendcanvas.setAttribute("id","heatViewer");
		this.heatcanvas = this.heatmapdiv.firstChild;
		var ctx = sendcanvas.getContext("2d");
		sendcanvas.width=this.imgWidth;
		sendcanvas.height=this.imgHeight;
		ctx.drawImage(this.imagecanvas,0,0);
		ctx.drawImage(this.heatcanvas,0,0);
		//var dataURL = sendcanvas.toDataURL();  Expensive operation takes a while to perform(recommend end to send/etc)
		var imgctx = this.imgview.getContext("2d");
		this.imgview.width = this.imgWidth;
		this.imgview.height = this.imgHeight;
		imgctx.drawImage(sendcanvas,0,0);
	}
}


/*
function runHeatMap(){
	var heatmapdiv = document.getElementById("heatmapcontainer");
	var imagecanvas = document.getElementById("imagecanvas");
	var heatmapInstance;
	var ctx = imagecanvas.getContext("2d");

	var img =  new Image();
	img.onload = function(){
		imagecanvas.width = img.width;
		imagecanvas.height = img.height;
		heatmapdiv.width = img.width;
		heatmapdiv.height = img.height;
		var config = {
		  container: heatmapdiv,
		  maxOpacity: .6,
		  minOpacity: .25,
		  radius: 20,
		  width: img.width,
		  height: img.height
		};
		var test= getComputedStyle(heatmapdiv);
		heatmapInstance = h337.create(config);
		var heatcanvas = document.getElementsByClassName("heatmap-canvas")[0];
		heatcanvas.width = img.width;
		ctx.drawImage(img,0,0);
		var points = [];
		var max = 0;
		var width = img.width;
		var height = img.height;
		var len = 200;

		while (len--) {
			var val = Math.floor(Math.random()*100);
			max = Math.max(max, val);
			var point = {
			x: Math.floor(Math.random()*width),
			y: Math.floor(Math.random()*height),
			value: val
			};
			points.push(point);
		}

		var data = { 
			max: max, 
			data: points 
		};

		heatmapInstance.setData(data);
		ctx.drawImage(heatcanvas,0,0);
		$(".heatmap-canvas").remove();
		var dataURL = imagecanvas.toDataURL();
		
	}
	img.src="public/HeatMap/models/Scene/Quadrant1.jpg";
};
*/