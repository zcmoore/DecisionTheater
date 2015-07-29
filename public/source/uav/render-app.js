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
var runtime = 600; // 10 minutes

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
var vehicleScale = 0.075;

var peopleMovementSpeedMin = 4;
var peopleMovementSpeedMax = 15;
var peopleScale = 0.1;
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
	//'public/models/HeatMap/Models/People/Arab/Women/women.js' // There is a problem with this model (property '112' is undefined?)
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

function registerTag(tag) {
	// TODO
	var tracker = {
		target: tagTarget,
		tag: tag
	};
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

function moveActors(delta)
{
	for (var actorIndex = 0; actorIndex < actors.length; actorIndex++)
	{
		var actor = actors[actorIndex];
		switch (actor.movementType)
		{
			case "path":
				moveActorAlongPath(delta, actor);
				break;
			case "loiter":
				loiter(delta, actor);
				break;
		}
	}
}

function redefineLoiterTarget(actor) {
	var newTarget = actor.movementEpicenter.clone();
	newTarget.y = 0;
	var offsetMin = -actor.movementRadius;
	var offsetMax = actor.movementRadius;
	var offsetRange = offsetMax - offsetMin;
	var zOffset = Math.floor((Math.random() * offsetRange) + offsetMin);
	var xOffset = Math.floor((Math.random() * offsetRange) + offsetMin);
	var offset = new THREE.Vector3(xOffset, 0, zOffset);
	newTarget.add(offset);

	actor.movementTarget = newTarget;
}

function loiter( delta, actor ) {
	var threshold = 1;

	var movementAmount;
	var movementAllowance = delta * actor.movementSpeed;
	var currentPosition = actor.position.clone();
	var nextWaypoint = actor.movementTarget;
	var distanceToNextWaypoint = currentPosition.distanceTo(nextWaypoint);

	if (distanceToNextWaypoint <= movementAllowance + threshold)
	{
		movementAmount = distanceToNextWaypoint;
		movementAllowance -= distanceToNextWaypoint;

		redefineLoiterTarget(actor);
	}
	else {
		movementAmount = movementAllowance;
		movementAllowance = 0;
	}

	movementVector = new THREE.Vector3();
	movementVector.subVectors(nextWaypoint, currentPosition).normalize().multiplyScalar(movementAmount);
	actor.position.add(movementVector);

	if (movementAllowance > 1)
	{
		remainingDelta = movementAllowance / speed;
		loiter(remainingDelta, actor);
	}
}

function moveActorAlongPath( delta, actor ) {
	if (actor.movementIndex >= actor.movementRoute.length)
	{
		actor.movementIndex = 0;
	}

	var threshold = 1;

	var movementAmount;
	var movementAllowance = delta * actor.movementSpeed;
	var currentPosition = actor.position.clone();
	var nextWaypoint = actor.movementRoute[actor.movementIndex];
	var distanceToNextWaypoint = currentPosition.distanceTo(nextWaypoint);

	if (distanceToNextWaypoint <= movementAllowance + threshold)
	{
		actor.movementIndex += 1;
		movementAmount = distanceToNextWaypoint;
		movementAllowance -= distanceToNextWaypoint;
	}
	else {
		movementAmount = movementAllowance;
		movementAllowance = 0;
	}

	movementVector = new THREE.Vector3();
	movementVector.subVectors(nextWaypoint, currentPosition).normalize().multiplyScalar(movementAmount);
	actor.position.add(movementVector);

	if (movementAllowance > 1)
	{
		remainingDelta = movementAllowance / speed;
		moveActorAlongPath(remainingDelta, actor);
	}
}

function populateCity() {
	/*
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
	// TODO: populate crowds
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

	var sceneLoader = new THREE.JSONLoader();
	sceneLoader.load(
		'public/models/HeatMap/Models/Scene/scene.js',
		function(geometry, materials) {
			var material = new THREE.MeshFaceMaterial(materials);
			city = new THREE.Mesh(geometry, material);
			scene.add(city);
			$("#loadNotification").remove();
	});
}

function loadVehicleModel(meshLoader, index) {
	if (index == vehicleModelPaths.length - 1)
	{
		meshLoader.onLoadComplete = function()
		{
			console.log("Loaded " + vehicleModelPaths.length + " vehicle models");
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
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.Mesh(geometry, material);
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
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.Mesh(geometry, material);
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
			var material = new THREE.MeshFaceMaterial(materials);
			var model = new THREE.Mesh(geometry, material);
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
	cameraControls.target.x = cameraData.target_x;
	cameraControls.target.y = cameraData.target_y;
	cameraControls.target.z = cameraData.target_z;
}

function onObjectCreate(objectData) {}

function onObjectListCreate(objectList) {}

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
			var intersection = raycaster.intersectObjects(/*city*/scene.children);

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
					if (mark.object.isTagged) {
						return;
					}


					tagTarget = mark.object;
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
				scene.add( sphere );
			}*/
		}
	}
}

function createMarker() {
	var geometry = new THREE.SphereGeometry(5);
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
	scene.fog = new THREE.Fog(0x808080, 3000, 6000);
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

	for (var i = 0; i < uavWaypoints.length; i++)
	{
		var sphere = createMarker();

		sphere.position.x = uavWaypoints[i].x;
		sphere.position.y = 0;
		sphere.position.z = uavWaypoints[i].z;

		scene.add(sphere);
	}
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
		cameraControls.update(delta);
		if (hasControl) {
			moveCamera(delta);
			moveActors(delta);
			updateCamera();
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
	var tagObject =  {
		tag: tag,
		location: tagTarget.position.clone()
	};

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
		$(".col-md-4").mouseover(function() {
			inUI = true;
		});
		$(".col-md-4").mouseout(function() {
			inUI = false;
		});
	});
}
