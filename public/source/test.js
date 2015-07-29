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
		  maxOpacity: .5,
		  minOpacity: .1,
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
		/*var socket = io.connect('/');
		socket.on('connect', function() {
			socket.emit('getImage',dataURL);
		  });*/
		
	}
	img.src="public/HeatMap/models/Scene/Quadrant1.jpg";
};