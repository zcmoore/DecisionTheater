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

HeatMapController.prototype.createHeatMap = function(imageLoc, leftBound,rightBound,lowerBound,upperBound){
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
}

HeatMapController.prototype.addPoint = function(ix,iy){
	var x = Math.floor(this.imgWidth*(ix-this.lx)/(this.hx-this.lx));
	var y = Math.floor(this.imgHeight*(iy-this.ly)/(this.hy-this.ly));
	this.heatmap.addData({ x: x, y: y, value: .2 });
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
	if (this.imgview){
		var sendcanvas = document.createElement('canvas');
		this.heatcanvas = this.heatmapdiv.firstChild;
		var ctx = sendcanvas.getContext("2d");
		sendcanvas.width=this.imgWidth;
		sendcanvas.height=this.imgHeight;
		ctx.drawImage(this.imagecanvas,0,0);
		ctx.drawImage(this.heatcanvas,0,0);
		var dataURL = sendcanvas.toDataURL();
		this.imgview.src=dataURL;
		console.log("updated?");
	}
}


function generateManyPoints(heatmapcontroller){
	var len = 200;
	while (len --){
		var x = Math.random()*(hmc.hx-hmc.lx)+hmc.lx;
		var y = Math.random()*(hmc.hy-hmc.ly)+hmc.ly;
		heatmapcontroller.addPoint(x,y);
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