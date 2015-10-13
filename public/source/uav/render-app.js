var resourcesLoaded = false;

var camera, scene, renderer;
var cameraControls, effectController;
var clock = new THREE.Clock();
var previousCameraData = { init: true };
var mouse = new THREE.Vector2();
var canvasWidth, canvasHeight;
var loader;
var city;
var mouseX, mouseY;
var mouseMoved;
var ambientLight, light, light2;
var raycaster;

var jsonData;
var inUI = false;
var optionListIDs = [];

// Desired flight time, in seconds
var runtime = 600;

// Speed of UAV, in world-units per second
var speed;
var uavElevation = 1200;

var civilianModels = [];
var vehicleModels = [];
var goodGuyModels = [];
var badGuyModels = [];

var peopleModels = [];

var vehicleMovementSpeedMax = 20; // exclusive
var vehicleMovementSpeedMin = 5;
var vehicleScale = 0.03;

var peopleMovementSpeedMin = 4;
var peopleMovementSpeedMax = 15;
var peopleScale = 5;
var loiterRadiusMin = 100;
var loiterRadiusMax = 200;
var loiterDistanceMin = -350;
var loiterDistanceMax = 350;
var cityPopulationMin = 4;
var cityPopulationMax = 11;
var loiterRadiusRange = loiterRadiusMax - loiterRadiusMin;
var loiterDistanceRange = loiterDistanceMax - loiterDistanceMin;
var cityPopulationRange = cityPopulationMax - cityPopulationMin;
var peopleMovementSpeedRange = peopleMovementSpeedMax - peopleMovementSpeedMin;

var paused = false;

var tagTarget;

var uavWaypoints = [];
var carPaths = [];
var nextWaypointIndex = 0;
var civilianModelPaths = [
	'public/models/HeatMap/Models/People/Arab/Men/man.js',
	
];
var goodGuyModelPaths = [
	'public/models/HeatMap/Models/People/Soldier/soldier.js'
];
var badGuyModelPaths = [
	'public/models/HeatMap/Models/People/Terrorist/terrorist.js'
];
var vehicleModelPaths = [
	'public/models/HeatMap/Models/Vehicles/PickupTruck/Truck.js',
	'public/models/HeatMap/Models/Vehicles/Tank/Tank.js',
	'public/models/HeatMap/Models/Vehicles/Truck/Truck.js'
];

var actors = [];
var actorShells = [];

var heatmapcontroller = new HeatMapController();
var imageSet = false;

var viewTimer = 0;
var tagCategoryIndex, sphereMarker;


/*
Components of a shell:
	movementSpeed
	position
	lookatTarget
	movementTarget
	movementEpicenter
	movementRadius
	movementRoute
	movementIndex
	movementType
	modelIndex
	modelType
*/
function assembleShells() {
	for (var i = 0; i < actors.length; i++)
	{
		var actor = actors[i];
		var shell = {
			movementSpeed: actor.movementSpeed,
			position: createVector3(actor.position),
			lookatTarget: actor.lookatTarget,
			movementTarget: actor.movementTarget,
			movementEpicenter: actor.movementEpicenter,
			movementRadius: actor.movementRadius,
			movementRoute: actor.movementRoute,
			movementIndex: actor.movementIndex,
			movementType: actor.movementType,
			modelIndex: actor.modelIndex,
			modelType: actor.modelType
		};

		actorShells[i] = shell;
	}

	sendShells();
}

function updateShells() {
	for (var i = 0; i < actors.length; i++)
	{
		var actor = actors[i];
		var shell = actorShells[i];

		shell.movementSpeed = actor.movementSpeed;
		shell.position = createVector3(actor.position.clone());
		shell.lookatTarget = actor.lookatTarget;
		shell.movementTarget = actor.movementTarget;
		shell.movementEpicenter = actor.movementEpicenter;
		shell.movementRadius = actor.movementRadius;
		shell.movementRoute = actor.movementRoute;
		shell.movementIndex = actor.movementIndex;
		shell.movementType = actor.movementType;
		shell.modelIndex = actor.modelIndex;
		shell.modelType = actor.modelType;
	}

	sendShells();
}

function receiveShells(shells) {
	actorShells = shells;
	if (actors.length <= 0)
	{
		for (var i = 0; i < actorShells.length; i++)
		{
			var shell = actorShells[i];
			var models = (shell.modelType == "person") ? peopleModels : vehicleModels;
			var model = models[shell.modelIndex];
			var actor = model.clone();

			actors.push(actor);
			scene.add(actor);
		}
	}

	for (var i = 0; i < actors.length; i++)
	{
		var actor = actors[i];
		var shell = actorShells[i];

		actor.movementSpeed = shell.movementSpeed;
		actor.position.x = shell.position.x;
		actor.position.y = shell.position.y;
		actor.position.z = shell.position.z;
		actor.lookatTarget = shell.lookatTarget;
		actor.movementTarget = shell.movementTarget;
		actor.movementEpicenter = shell.movementEpicenter;
		actor.movementRadius = shell.movementRadius;
		actor.movementRoute = shell.movementRoute;
		actor.movementIndex = shell.movementIndex;
		actor.movementType = shell.movementType;
		actor.modelIndex = shell.modelIndex;
		actor.modelType = shell.modelType;
		
		
	}
}

function createVector3(psuedo) {
	return new THREE.Vector3(psuedo.x, psuedo.y, psuedo.z);
}

function registerTag(tag) {
	var tracker = {
		target: tagTarget,
		tag: tag
	};
	console.log(tag.tagIndex);
	sphereMarker.material.color.setHex(getTagColor(tag.tagIndex));

	sendTag(tag);
}

function getTagColor(tagIndex) {
    switch (tagIndex) {
        case 0: {
            return 0xFF0000;
        }
        case 1: {
            return 0x00FF00;
        }
        case 2: {
            return 0x0000FF;
        }
        case 3: {
            return 0xFF00FF;
        }

    }
}

function pause() {
	$("#usermenu").removeClass("hidden");
	$("#usermenu").addClass("hidden");
	$("#tagmenu").removeClass("hidden");
	paused = true;
}

function unpause() {
	// Collapse all option lists
	for (var i = 0; i < optionListIDs.length; i++)
	{
		$(optionListIDs[i]).removeClass("hidden");
		$(optionListIDs[i]).addClass("hidden");
	}

	$("#tagmenu").removeClass("hidden");
	$("#tagmenu").addClass("hidden");
	$("#usermenu").removeClass("hidden");
	paused = false;
}
var animations = [];
var animCounter = 0;
function generateActors() {
	needActorGeneration = false;

	// Populate crowds
	for (var cityIndex = 0; cityIndex < uavWaypoints.length; cityIndex++)
	{
		var temp = uavWaypoints[cityIndex];
		var cityEpicenter = new THREE.Vector3(temp.x, temp.y, temp.z);
		var cityPopulation = ((Math.random() * cityPopulationRange) + cityPopulationMin);

		for (var personIndex = 0; personIndex < cityPopulation; personIndex++)
		{
			var modelIndex = Math.floor((Math.random() * peopleModels.length));
			var model = peopleModels[modelIndex];

			var actor = model.clone();
			actor.modelType = "person";
			actor.modelIndex = modelIndex;
			actor.movementType = "loiter";
			actor.movementSpeed = Math.floor((Math.random() * peopleMovementSpeedRange) + peopleMovementSpeedMin);

			var xOffset = Math.floor((Math.random() * loiterDistanceRange) + loiterDistanceMin);
			var zOffset = Math.floor((Math.random() * loiterDistanceRange) + loiterDistanceMin);
			var offset = new THREE.Vector3(xOffset, 0, zOffset);
			actor.movementEpicenter = cityEpicenter.clone().add(offset);
			actor.movementRadius = Math.floor((Math.random() * loiterRadiusRange) + loiterRadiusMin);
			redefineLoiterTarget(actor);
			actor.position.x = actor.movementTarget.x;
			actor.position.y = actor.movementTarget.y;
			actor.position.z = actor.movementTarget.z;
			redefineLoiterTarget(actor);

			actors.push(actor);
			scene.add(actor);
			var geometry = new THREE.BoxGeometry( 1, 1, 1 );
			var material = new THREE.MeshBasicMaterial( {color: 0x00ff00,transparent:true,opacity:0} );
			var cube = new THREE.Mesh( geometry, material );
			actor.add( cube );
			cube.isCollisionBox = true;
			cube.scale.y=peopleScale;
			cube.parent = actor;
			actor.collisionBox = cube;

			animations.push(new THREE.Animation(actor, actor.geometry.animations[0]));
			animations[animCounter].play();
			animCounter++;
			//animation.play();
		}
	}

	// Populate vehicles
	for (var routeIndex = 0; routeIndex < carPaths.length; routeIndex++)
	{
		var modelIndex = Math.floor((Math.random() * vehicleModels.length));
		var model = vehicleModels[modelIndex];

		var movementSpeedRange = vehicleMovementSpeedMax - vehicleMovementSpeedMin;

		var actor = model.clone();
		actor.modelType = "vehicle";
		actor.modelIndex = modelIndex;
		actor.movementRoute = carPaths[routeIndex];
		actor.movementIndex = 0;
		actor.movementType = "path";
		actor.movementSpeed = Math.floor((Math.random() * movementSpeedRange) + vehicleMovementSpeedMin);
		var position = actor.movementRoute[actor.movementIndex];
		actor.position.x = position.x;
		actor.position.y = position.y;
		actor.position.z = position.z;

		actors.push(actor);
		scene.add(actor);
	}

	assembleShells();
}

function populateCity() {
	var sceneLoader = new THREE.JSONLoader();

	if (needActorGeneration)
	{
		generateActors();
	}

	sceneLoader.load(
		'public/models/HeatMap/Models/Scene/scene.js',
		function(geometry, materials) {
			var material = new THREE.MeshFaceMaterial(materials);
			city = new THREE.Mesh(geometry, material);
			scene.add(city);
			var bbh = new THREE.BoundingBoxHelper(city,0xff0000);
			geometry.computeBoundingBox();
			var bounds = geometry.boundingBox;			
			heatmapcontroller.createHeatMap("public/models/HeatMap/Models/Scene/HeatmapQuadrant.jpg",
										bounds.min.x,bounds.max.x,
										bounds.min.z,bounds.max.z,
										document.getElementById("heatViewer"));
	});
}

function loadVehicleModel(meshLoader, index) {
	if (index == vehicleModelPaths.length - 1)
	{
		meshLoader.onLoadComplete = function()
		{
			console.log("Loaded " + vehicleModelPaths.length + " vehicle models");
			resourcesLoaded = true;
			populateCity();
		};
	}
	else {
		meshLoader.onLoadComplete = function()
		{
			loadVehicleModel(meshLoader, index + 1);
		};
	}

	meshLoader.load(
		vehicleModelPaths[index],
		function(geometry, materials) {
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.Mesh(geometry, material);
			model.scale.set(vehicleScale, vehicleScale, vehicleScale);
			vehicleModels.push(model);
	});
}

function loadBadGuyModel(meshLoader, index) {
	if (index == badGuyModelPaths.length - 1)
	{
		meshLoader.onLoadComplete = function()
		{
			console.log("Loaded " + badGuyModelPaths.length + " bad guy models");
			loadVehicleModel(meshLoader, 0);
		};
	}
	else {
		meshLoader.onLoadComplete = function()
		{
			loadBadGuyModel(meshLoader, index + 1);
		};
	}

	meshLoader.load(
		badGuyModelPaths[index],
		function(geometry, materials) {
			for ( var i = 0; i < materials.length; i ++ ) {
				var m = materials[ i ];
				m.skinning = true;
			}
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.SkinnedMesh(geometry, material);
			model.scale.set(peopleScale, peopleScale, peopleScale);
			badGuyModels.push(model);
			peopleModels.push(model);
	});
}

function loadGoodGuyModel(meshLoader, index) {
	if (index == goodGuyModelPaths.length - 1)
	{
		meshLoader.onLoadComplete = function()
		{
			console.log("Loaded " + goodGuyModelPaths.length + " good guy models");
			loadBadGuyModel(meshLoader, 0);
		};
	}
	else {
		meshLoader.onLoadComplete = function()
		{
			loadGoodGuyModel(meshLoader, index + 1);
		};
	}

	meshLoader.load(
		goodGuyModelPaths[index],
		function(geometry, materials) {
			for ( var i = 0; i < materials.length; i ++ ) {
				var m = materials[ i ];
				m.skinning = true;
			}
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.SkinnedMesh(geometry, material);
			model.scale.set(peopleScale, peopleScale, peopleScale);
			goodGuyModels.push(model);
			peopleModels.push(model);
	});
}

function loadCivilianModel(meshLoader, index) {
	if (index == civilianModelPaths.length - 1)
	{
		meshLoader.onLoadComplete = function()
		{
			console.log("Loaded " + civilianModelPaths.length + " civilian models");
			loadGoodGuyModel(meshLoader, 0);
		};
	}
	else {
		meshLoader.onLoadComplete = function()
		{
			loadCivilianModel(meshLoader, index + 1);
		};
	}

	meshLoader.load(
		civilianModelPaths[index],
		function(geometry, materials) {
			for ( var i = 0; i < materials.length; i ++ ) {
				var m = materials[ i ];
				m.skinning = true;
			}
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.SkinnedMesh(geometry, material);
			model.scale.set(peopleScale, peopleScale, peopleScale);
			civilianModels.push(model);
			peopleModels.push(model);
	});
}

function loadModels() {
	console.log("loading models");
	var meshLoader = new THREE.JSONLoader();
	loadCivilianModel(meshLoader, 0);
	console.log("end load call");
}

function moveCamera( delta ) {
	if (nextWaypointIndex >= uavWaypoints.length)
	{
		// Handle "end" case
		return;
	}

	var threshold = 1;

	var movementAmount;
	var movementAllowance = delta * speed;
	var currentPosition = camera.position.clone();
	var nextWaypoint = uavWaypoints[nextWaypointIndex];
	var distanceToNextWaypoint = currentPosition.distanceTo(nextWaypoint);

	if (distanceToNextWaypoint <= movementAllowance + threshold)
	{
		nextWaypointIndex += 1;
		movementAmount = distanceToNextWaypoint;
		movementAllowance -= distanceToNextWaypoint;
	}
	else {
		movementAmount = movementAllowance;
		movementAllowance = 0;
	}

	movementVector = new THREE.Vector3();
	movementVector.subVectors(nextWaypoint, currentPosition).normalize().multiplyScalar(movementAmount);
	camera.position.add(movementVector);

	if (movementAllowance > 1)
	{
		moveCamera(movementAllowance / speed);
	}
}

function getCameraData() {
	var position_x = camera.position.x;
	var position_y = camera.position.y;
	var position_z = camera.position.z;
	var target_x = cameraControls.target.x;
	var target_y = cameraControls.target.y;
	var target_z = cameraControls.target.z;

	var cameraData = {
		position_x: position_x,
		position_y: position_y,
		position_z: position_z,
		fov: camera.fov,
		target_x: target_x,
		target_y: target_y,
		target_z: target_z
	};

	return cameraData;
}

function updateCamera() {
	var cameraData = getCameraData();

	if (previousCameraData.init || previousCameraData.position_x !== cameraData.position_x || previousCameraData.position_y !== cameraData.position_y || previousCameraData.position_z !== cameraData.position_z || previousCameraData.target_x !== cameraData.target_x || previousCameraData.target_y !== cameraData.target_y || previousCameraData.target_z !== cameraData.target_z) {
		sendUpdatedCameraInformation(cameraData);
	}

	previousCameraData = cameraData;
}

function onCameraUpdate(cameraData) {
	camera.position.x = cameraData.position_x;
	camera.position.y = cameraData.position_y;
	camera.position.z = cameraData.position_z;
	camera.fov = cameraData.fov;
	cameraControls.target.x = cameraData.target_x;
	cameraControls.target.y = cameraData.target_y;
	cameraControls.target.z = cameraData.target_z;
}

function onObjectCreate(objectData) {}

function onObjectListCreate(objectList) {}

function waitForHeatmap(tags){
	for (i =0; i <tags.length; i++){
		var tag = tags[i];
		heatmapcontroller.addPoint(tag.cameraLocation,tag.targetLocation,tag.rot,tag.fov);
	}
	heatmapcontroller.updateImage();
}

function waitForHeatmapView(tags){
	for (i =0; i <tags.length; i++){
		var tag = tags[i];
		heatmapcontroller.addViewPoint(tag.cameraLocation,tag.targetLocation,tag.rot,tag.fov);
	}
	heatmapcontroller.updateImage();
}

function addTags(tags){
    waitForHeatmap(tags);

    var tag;
    var actor;

    for (var x = 0; x < actors.length; x++) {
        actor = actors[x];
        for (var y = 0; y < tags.length; y++) {
            tag = tags[y];
            if (actor.id == tag.id) {
                var sphere = createMarker(actor.scale);
                sphere.material.color.setHex(getTagColor(tag.tagIndex));
                actor.add(sphere);
                sphere.position.y += 14 * (1 / actor.scale.x);
            }
        }
    }
}

function addViewTags(viewTags){
	waitForHeatmapView(viewTags);
}

function addTag(tag){
	heatmapcontroller.addPoint(tag.cameraLocation,tag.targetLocation,tag.rot,tag.fov);
	var actor;

	for (var x = 0; x < actors.length; x++) {
	    actor = actors[x];
	    if (actor.id == tag.id) {
	        var sphere = createMarker(actor.scale);
	        sphere.material.color.setHex(getTagColor(tag.tagIndex));
	        actor.add(sphere);
	        sphere.position.y += 14 * (1 / actor.scale.x);
	    }
	}
}

function addViewTag(viewTag){
	heatmapcontroller.addViewPoint(viewTag.cameraLocation,viewTag.targetLocation,viewTag.rot,viewTag.fov);
	heatmapcontroller.updateImage();

}

function onWindowResize() {
	canvasWidth = window.innerWidth;
	canvasHeight = window.innerHeight - $('#jsviewport').offset().top;

	renderer.setSize(canvasWidth, canvasHeight);

	camera.aspect = canvasWidth / canvasHeight;
	camera.updateProjectionMatrix();
}

function onMouseMove(event) {
	if (hasControl) {
		// calculate mouse position in normalized device coordinates
		// (-1 to +1) for both components
		event.preventDefault();
		var oldX = mouseX;
		var oldY = mouseY;
		mouseX = event.clientX;
		mouseY = event.clientY;
		if (oldX != mouseX && oldY != mouseY) {
			mouse.x = (event.clientX / window.innerWidth) * 2 - 1;
			mouse.y = -(event.clientY / window.innerHeight) * 2 + 1;
			mouseMoved = true;
		}
	}

}

function onDocumentMouseDown(event) {
	if (hasControl) {
		mouseMoved = false;
	}
}

function removeObjectByID(id) {}
function deleteObjectByID(id) {}
function updateObjectByID(objectData) {}

function onDocumentMouseUp(event) {
	var MOUSE_LEFT = 0;
	var MOUSE_MIDDLE = 1;
	var MOUSE_RIGHT = 2;

	if (event.button == MOUSE_MIDDLE)
	{
		console.log("unpausing");
		unpause();
	}

	if (hasControl && mouse.x <= 1 && mouse.x >= -1 && mouse.y <= 1 && mouse.y >= -1 && !inUI) {
		if (/*event.button == MOUSE_RIGHT && */mouseMoved == false) {
			var raycaster = new THREE.Raycaster();
			raycaster.precision = 500;
			raycaster.setFromCamera(mouse, camera);
			var intersection = raycaster.intersectObjects(actors,true);

			// TODO: add targeting logic
			console.log("attempting trace");

			if (intersection.length > 0) {
				var mark = null;
				for (var i = 0; i < intersection.length; i++)
				{
					if (intersection[i].object !== city)
					{
						mark = intersection[i];
						break;
					}
				}

				if (mark != null)
				{
					
					if (mark.object.isCollisionBox){
						mark.object = mark.object.parent;
					
					}
					
					if (mark.object.isTagged) {
						return;
					}
					
					tagTarget = mark.object;
					var scale = tagTarget.scale;
					console.log(scale);
					sphereMarker = createMarker(scale);

					tagTarget.add(sphereMarker);
					sphereMarker.position.y += 14*(1/scale.x);
					pause();
				}
			}

			/*if (intersection.length > 0) {
			    var sphere = createMarker();

			    sphere.position.x = mark.point.x;
			    sphere.position.y = mark.point.y;
			    sphere.position.z = mark.point.z;

			    console.log(parseFloat(mark.point.x).toFixed(2) + " "
									+ parseFloat(mark.point.y).toFixed(2) + " "
									+ parseFloat(mark.point.z).toFixed(2));
			    scene.add(sphere);
			}*/
		}
	}
}

function createMarker(scale) {
	
	var geometry = new THREE.SphereGeometry((2.5*(1/scale.x)),32,32);
	var material = new THREE.MeshBasicMaterial( {color: 0xffff00} );
	var sphere = new THREE.Mesh( geometry, material );

	return sphere;
}

function loadContent() {
	// TODO: remove the synchronous calls and chain instead
	// synchronous $.getJSON() call
	$.ajax({
		async: false,
	  dataType: "json",
	  url: 'public/resources/uav_waypoints.json',
		data: "",
	  success: function(data) {
			uavWaypoints = data.flight_path;
		}
	});

	var carWaypointListPaths = [
		'public/resources/car_waypoints_city1.json',
		'public/resources/car_waypoints_city2.json',
		'public/resources/car_waypoints_city3.json'
	];

	for (var index = 0; index < carWaypointListPaths.length; index++)
	{
		var path = carWaypointListPaths[index];

		// synchronous $.getJSON() call
		$.ajax({
			async: false,
		  dataType: "json",
		  url: path,
			data: "",
		  success: function(data) {
				for (var i = 0; i < data.waypoints.length; i++)
				{
					var route = data.waypoints[i];
					carPaths.push(route);
				}
			}
		});
	}
}

function init() {
	var canvasWidth = window.innerWidth * .75;
	var canvasHeight = window.innerHeight - $('#jsviewport').offset().top;
	var canvasRatio = canvasWidth / canvasHeight;

	loadContent();

	// RENDERER
	renderer = new THREE.WebGLRenderer({
		antialias: true
	});
	renderer.gammaInput = true;
	renderer.gammaOutput = true;
	renderer.setSize(canvasWidth, canvasHeight);
	renderer.setClearColor(0x888888, 1.0);
	// CAMERA
	camera = new THREE.PerspectiveCamera(45, canvasRatio, 1, 40000);
	// CONTROLS
	cameraControls = new THREE.POVControls(camera, renderer.domElement);
	camera.position.set(-315, uavElevation, -3275);
	cameraControls.target.set(4, 301, 92);

	raycaster = new THREE.Raycaster();

	setSpeed();
	console.log("Flight speed is " + speed + " units/second");

	loadModels();

	// SCENE
	fillScene();
	addToDOM();

	render();
	createTagList();
}

function setSpeed() {
	var currentPosition = new THREE.Vector3( camera.position.x, camera.position.y, camera.position.z );
	var distance = 0;

	for (var i = 0; i < uavWaypoints.length; i++)
	{
		var nextPosition = new THREE.Vector3( uavWaypoints[i].x, uavWaypoints[i].y, uavWaypoints[i].z );
		distance += currentPosition.distanceTo(nextPosition);
	}

	speed = distance / runtime;
}

function fillScene() {
	// SCENE
	scene = new THREE.Scene();
	scene.fog = new THREE.Fog(0x808080, 5000, 8000);
	// LIGHTS
	ambientLight = new THREE.AmbientLight(0x030303);
	light = new THREE.DirectionalLight(0xFFFFFF, 1.0);
	light.position.set(200, 400, 500);

	light2 = new THREE.DirectionalLight(0xFFFFFF, 1.0);
	light2.position.set(-400, 200, -300);

	scene.add(ambientLight);
	scene.add(light);
	scene.add(light2);

	loader = new THREE.JSONLoader();

	/*for (var i = 0; i < uavWaypoints.length; i++)
	{
		var sphere = createMarker();

		sphere.position.x = uavWaypoints[i].x;
		sphere.position.y = 0;
		sphere.position.z = uavWaypoints[i].z;

		scene.add(sphere);
	}*/
}

function addToDOM() {
	var container = document.getElementById('jsviewport');
	var canvas = container.getElementsByTagName('canvas');
	if (canvas.length > 0) {
		container.removeChild(canvas[0]);
	}
	container.appendChild(renderer.domElement);
	document.addEventListener('mousedown', onDocumentMouseDown, false);
	document.addEventListener('mouseup', onDocumentMouseUp, false);
	document.addEventListener('mousemove', onMouseMove, false);
	window.addEventListener('resize', onWindowResize, false);
}

function render() {
	requestAnimationFrame(render);
	var delta = clock.getDelta();
	cameraControls.enabled = hasControl;

	if (!paused)
	{
		THREE.AnimationHandler.update( delta );
		cameraControls.update(delta);
		if (hasControl) {
			moveCamera(delta);
			moveActors(delta);
			updateShells();
			updateCamera();
		}
		viewTimer += delta;
		if (viewTimer > 2){
			viewTimer =0;
			var raycaster = new THREE.Raycaster();
			raycaster.precision = 500;
			raycaster.setFromCamera(new THREE.Vector2(0,0), camera);
			var intersection = raycaster.intersectObjects(scene.children,true);
			if (intersection.length>0){
				var tag = intersection[0].point;
				var tagObject = createViewTag(tag);
				sendViewTag(tagObject);
			}
		}
	}

	renderer.render(scene, camera);
}

function startRenderApp() {
	try {
		init();

	} catch (e) {
		var errorReport = "Your program encountered an unrecoverable error, can not draw on canvas. Error was:<br/><br/>";
		$('#container').append(errorReport + e);
	}
}

function createTagList() {
	$("#taglist").empty();
	console.log("Creating tag list");

	// TODO: replace synchronous call with asynchronous call
	$.ajax({
		async: false,
	  dataType: "json",
	  url: 'public/resources/categories.json',
		data: "",
	  success: function(data) {
			var keys = Object.keys(data);
			for (var categoryIndex = 0; categoryIndex < keys.length; categoryIndex++)
			{
				var category = keys[categoryIndex];
				var options = data[category];

				var categoryID = "tagCategory" + categoryIndex;
				var categoryHTML = "<div>" + manufactureButton(categoryID, category) + "</br></div>";
				var categoryButtonQuery = "#" + categoryID;
				$("#taglist").append(categoryHTML);

				var optionsListID = categoryID + "Options";
				var categoryElementID = "#" + optionsListID;

				var categoryOptionsHTML = manufactureEmptyOptionsList(optionsListID);
				$("#taglist").append(categoryOptionsHTML);
				$(categoryElementID).toggleClass("hidden");
				optionListIDs.push(categoryElementID);

				var categoryButtonCallback = (function(targetElementID){
					return function(){
						for (var i = 0; i < optionListIDs.length; i++)
						{
							if (optionListIDs[i] == targetElementID) {continue;}
							$(optionListIDs[i]).removeClass("hidden");
							$(optionListIDs[i]).addClass("hidden");
						}

						tagCategoryIndex = targetElementID;

						$(targetElementID).toggleClass("hidden");
					}
				})(categoryElementID);
				$(categoryButtonQuery).click(categoryButtonCallback);

				for (var optionIndex = 0; optionIndex < options.length; optionIndex++)
				{
					var option = options[optionIndex];
					var optionID = "tagCategory" + categoryIndex + "Option" + optionIndex;
					var optionHTML = "<div>" + manufactureButton(optionID, option) + "</br></div>";
					$(categoryElementID).append(optionHTML);

					var optionButtonCallback = (function(tag){
						return function(){
							tagTarget.isTagged = true;
							var tagObject = createTag(tag);
							registerTag(tagObject);
							unpause();
						}
					})(option);
					$("#" + optionID).click(optionButtonCallback);
				}
			}
		}
	});
}

function createTag(tag) {
    console.log(tagCategoryIndex);
    var tagIndex;
    if (tagCategoryIndex == '#tagCategory0Options') {
        tagIndex = 0;
    }
    if (tagCategoryIndex == '#tagCategory1Options') {
        tagIndex = 1;
    }
    if (tagCategoryIndex == '#tagCategory2Options') {
        tagIndex = 2;
    }
    if (tagCategoryIndex == '#tagCategory3Options') {
        tagIndex = 3;
    }

	var ix = tagTarget.position.x;
	var iy = tagTarget.position.z;
	var jx = camera.position.x;
	var jy = camera.position.z;
	var height = Math.sqrt(Math.pow(jx-ix,2)+Math.pow(jy-iy,2));
	var width = height/Math.tan(camera.fov);
	var tagObject = {
        id:tagTarget.id,
        tag: tag,
        tagIndex: tagIndex,
		cameraLocation: camera.position.clone(),
		targetLocation: tagTarget.position.clone(),
		rot:			camera.rotation.y,
		fov:			camera.fov
	};
	//heatmapcontroller.addPoint(tagObject.cameraLocation,tagObject.targetLocation,tagObject.rot,tagObject.fov);
	if (!imageSet){
		imageSet = true;
	}
	return tagObject;
}

function createViewTag(tag) {
	var ix = tag.x;
	var iy = tag.z;
	var jx = camera.position.x;
	var jy = camera.position.z;
	var height = Math.sqrt(Math.pow(jx-ix,2)+Math.pow(jy-iy,2));
	var width = height/Math.tan(camera.fov);
	var tagObject =  {
		tag: tag,
		cameraLocation: camera.position.clone(),
		targetLocation: tag.clone(),
		rot:			camera.rotation.y,
		fov:			camera.fov
	};
	//heatmapcontroller.addPoint(tagObject.cameraLocation,tagObject.targetLocation,tagObject.rot,tagObject.fov);
	if (!imageSet){
		imageSet = true;
	}
	return tagObject;
}

function manufactureButton(id, text) {
	return "<button type='button' id='" + id + "' class='btn btn-primary'>" + text + "</button>";
}

function manufactureEmptyOptionsList(id) {
	return "<div style='margin-left: 20px'><div class='collapse btn-group' role='group' aria-label='addremove' id='" + id + "'></div></div>";
}

function bindUIFunctionality() {
	$("#viewing").collapse("hide");
	$("#editing").collapse("show");

	$(document).ready(function() {
		$("#menu").click(function() {
			$(".col-md-4").collapse("toggle");
			if (hasControl) {
				$("#menudiv").collapse("show");
			}
		});
		$("#heatView").click(function() {
			if (!imageSet){
				heatmapcontroller.updateImage();
				imageSet = true;
			}
			if($("#heatViewer").is(":visible")){
				paused = false;
				$("#heatView").text("Show Heatmap");
				$("#heatViewer").hide();
			}
			else {
				heatmapcontroller.updateImage();
				paused = true;
				$("#heatView").text("Hide Heatmap");
				$("#heatViewer").show();
			}
			
		});
		$("#menuclass").mouseover(function() {
			inUI = true;
		});
		$("menuclass").mouseout(function() {
			inUI = false;
		});
	});
}
