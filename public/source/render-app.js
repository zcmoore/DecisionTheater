var camera, scene, renderer;
var cameraControls, effectController;
var clock = new THREE.Clock();
var previousCameraData = {init: true};
var mouse = new THREE.Vector2();
var canvasWidth;
var canvasHeight;
var loader;
var city;
var mouseX,mouseY;
var mouseMoved;
var ambientLight,light,light2;
var nightMode=false;
var lamps = {};
var selectableObjects=[];
var lightList = {};
var jsonData;
var lightPlaces = [];
var addablePlaces = [];
var adding = false;
var selectedObject;
var addableLampMesh;
var objectControl;
var transforming;
var meshToAdd;
var raycaster;
var inUI = false;

var Modes = Object.freeze({
	EDIT: 		0,
	VIEW: 		1,
	ADD: 		2,
	ADDANY: 	3,
	TRANSFORM: 	4
	});
var currentMode = Modes.EDIT;

function getCameraData()
{
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

    if (previousCameraData.init
      || previousCameraData.position_x !== cameraData.position_x
      || previousCameraData.position_y !== cameraData.position_y
      || previousCameraData.position_z !== cameraData.position_z
      || previousCameraData.target_x !== cameraData.target_x
      || previousCameraData.target_y !== cameraData.target_y
      || previousCameraData.target_z !== cameraData.target_z)
    {
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

function onObjectCreate(objectData) {
	loader.load(
	'public/models/light/lampJoint.js',

	function ( geometry, materials ) {
		var material = new THREE.MeshFaceMaterial( materials );
		var lamp = new THREE.SkinnedMesh( geometry, material );
		scene.add(lamp);
		lamp.position.setX(objectData.pos_x);
		lamp.position.setY(objectData.pos_y);
		lamp.position.setZ(objectData.pos_z);
		lamp.rotation.x=objectData.rot_x;
		lamp.rotation.y=objectData.rot_y;
		lamp.rotation.z=objectData.rot_z;
		var objPos = objectData;
		var bones = lamp.skeleton.bones;
		var pos = bones[0].position;
		var spotLight = new THREE.SpotLight(0xFFFF99,0.0);
		if (nightMode){
			spotLight.intensity = 0.8;
		}
		lamp.serverID=objectData.id;
		lamps[objectData.id]=lamp;
		selectableObjects.push(lamp);
		spotLight.position.set(objPos.pos_x+pos.x,objPos.pos_y+pos.y+10,objPos.pos_z+pos.z);
		var lightTarget = new THREE.Object3D();
		lightTarget.position.set(objPos.pos_x+pos.x,objPos.pos_y+pos.y-100,objPos.pos_z+pos.z);
		spotLight.target = lightTarget;
		scene.add(lightTarget);
		spotLight.castShadow = true;
		spotLight.shadowCameraNear = 500;
		spotLight.shadowCameraFar = 1000;
		spotLight.shadowCameraFov = 80;
		scene.add(spotLight);
		lightList[objectData.id]=spotLight;
	}
	);
}

function onObjectListCreate(objectList) {
	var keys = [];
	for(var k in objectList) keys.push(k);

	for (i = 0; i < keys.length; i++) {
		onObjectCreate(objectList[keys[i]]);
	}
}

function onWindowResize() {
  canvasWidth = window.innerWidth;
  canvasHeight = window.innerHeight - $('#jsviewport').offset().top;

  renderer.setSize(canvasWidth, canvasHeight);

  camera.aspect = canvasWidth / canvasHeight;
  camera.updateProjectionMatrix();
}

function updateNightMode(bool){
	if (bool == true){
		turnNightOn();
	}
	else {
		turnNightOff();
	}
}

function turnNightOn(){
	light.intensity = 0.0;
	light2.intensity = 0.0;
	nightMode = true;
	for (i = 0; i < lightList.length; i++) {
		lightList[i].intensity = 0.8;
	}
}

function turnNightOff(){
	light.intensity = 1.0;
	light2.intensity = 1.0;
	nightMode = false;
	for (i = 0; i < lightList.length; i++) {
		lightList[i].intensity = 0.0;
	}
}

function changeNightMode(bool){
	if (hasControl){
		if (bool == false && nightMode == true){ //night is off
			turnNightOff();
			sendUpdateLightMode(bool);
		}
		else if (bool == true && nightMode == false){ // night is on
			turnNightOn();
			sendUpdateLightMode(bool);
		}
	}
}

function showAddablePlaces(){
	switch(currentMode){
		case Modes.ADD:
			if (addablePlaces.length == 0){
				for (i = 0; i < lightPlaces.length; i++) {
					var pos = lightPlaces[i];
					var material = new THREE.MeshLambertMaterial( {color: 0x00ffff} );
					var mesh = new THREE.Mesh(addableLampMesh, material );
					addablePlaces.push(mesh);
					mesh.position.set(pos.x,pos.y,pos.z);
					scene.add(mesh);
				}
			}
			else{
				for (i = 0; i < addablePlaces.length;i++) {
					deselectCurrentObject();
					scene.add(addablePlaces[i]);
				}
			}
			adding = true;
			break;
		case Modes.ADDANY:
			if(!meshToAdd){
				loader.load(
				'public/models/light/lampJoint.js',
				
				function ( geometry, materials ) {
					var material = new THREE.MeshLambertMaterial( {color: 0x00ffff} );
					var mesh = new THREE.SkinnedMesh( geometry, material );
					scene.add(mesh);
					meshToAdd = mesh;
				}
				);
			}
			break;
	}
}

function hideAddablePlaces(){
	for (i = 0; i < addablePlaces.length;i++) {
		scene.remove(addablePlaces[i]);
	}
	adding = false;
}

function onMouseMove( event ) {
	if (hasControl){
		// calculate mouse position in normalized device coordinates
		// (-1 to +1) for both components
		event.preventDefault();
		var oldX = mouseX;
		var oldY = mouseY;
		mouseX = event.clientX;
		mouseY = event.clientY;
		if (oldX != mouseX && oldY != mouseY){
			mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
			mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
			mouseMoved = true;	
		}
	}

}

function onDocumentMouseDown( event ) {
	if (hasControl){
		mouseMoved = false;
	}
}

function deleteObjectByID(id){
	if (id != '-1'){
		for(i = 0; i < selectableObjects.length; i++) {
			if(selectableObjects[i] === lamps[id]) {
			   selectableObjects.splice(i, 1);
			   break;
			}
		}
		var material = new THREE.MeshLambertMaterial( {color: 0x00ffff} );
		var mesh = new THREE.Mesh(addableLampMesh, material );
		addablePlaces.push(mesh);
		var pos = lamps[id].position;
		var rot = lamps[id].rotation;
		mesh.position.set(pos.x,pos.y,pos.z);
		mesh.rotation.set(rot.x,rot.y,rot.z);
		addablePlaces.push(mesh);
		scene.remove(lamps[id]);
		delete lamps[id];
		scene.remove(lightList[id]);
		delete lightList[id];
	}
}

function updateObjectByID(objectData){
	var id = objectData.id;
	if (id != '-1'){
		lamps[id].position.set(objectData.pos_x,objectData.pos_y,objectData.pos_z);
		lamps[id].rotation.set(objectData.rot_x,objectData.rot_y,objectData.rot_z);
	}
}

function deselectCurrentObject(){
	selectedObject = null;
	objectControl.detach();
	scene.remove(objectControl);
}

function deleteSelectedObject(){
	if (selectedObject){
		sendDeletionNotice(selectedObject.serverID);
		selectedObject = null;
		objectControl.detach();
		scene.remove(objectControl);
		$("#transform").collapse("hide");
		switchModes(Modes.EDIT);
	}
}

function switchModes(mode){
	switch(currentMode){ //cancel current mode actions/items
		case Modes.EDIT:
		break;
		case Modes.VIEW:
		break;
		case Modes.ADD:
			$("#objectlist").collapse("hide");
			hideAddablePlaces();
		break;
		case Modes.ADDANY:
			$("#objectlist").collapse("hide");
		break;
		case Modes.TRANSFORM:
			deselectCurrentObject();
		break;
	}
	currentMode=mode;
	switch(currentMode){ // activate new mode and actions
		case Modes.EDIT:
		break;
		case Modes.VIEW:
		break;
		case Modes.ADD:
			$("#objectlist").collapse("show");
		break;
		case Modes.ADDANY:
			$("#objectlist").collapse("show");
		break;
		case Modes.TRANSFORM:
		break;
	}
}

function cancelCurrentAction(){
	switchModes(Modes.EDIT);
}

function onDocumentMouseUp( event ) {
	if (hasControl && mouse.x <= 1 && mouse.x >=-1 && mouse.y <= 1 && mouse.y >=-1 && event.button == 0 && !inUI){
		if (currentMode == Modes.ADD && mouseMoved == false){
			raycaster = new THREE.Raycaster();
			raycaster.setFromCamera( mouse, camera );	
			var intersects = raycaster.intersectObjects(addablePlaces);

			if (intersects.length > 0){
				var obj = intersects[0].object;	
				scene.remove(obj);
				for(i = 0; i < addablePlaces.length; i++) {
					if(addablePlaces[i] === obj) {
					   addablePlaces.splice(i, 1);
					}
				}
				var objectData = {
					id: "-1",
					pos_x: obj.position.x,
					pos_y: obj.position.y,
					pos_z: obj.position.z,
					rot_x: obj.rotation.x,
					rot_y: obj.rotation.y,
					rot_z: obj.rotation.z
				};

				hideAddablePlaces();
				sendObjectCreation(objectData);
				switchModes(Modes.EDIT);
			}
		}
		else if (currentMode == Modes.EDIT){
			var raycaster = new THREE.Raycaster();
			raycaster.setFromCamera( mouse, camera );

			var intersects = raycaster.intersectObjects(selectableObjects);

			if (intersects.length > 0){
				var obj = intersects[0].object;
				selectedObject = obj;
				objectControl.attach(selectedObject);
				scene.add(objectControl);
				$("#transform").collapse("show");
				switchModes(Modes.TRANSFORM);
			}
		}
		else if (currentMode == Modes.ADDANY && mouseMoved == false){
			console.log(mouseMoved = false);
			var raycaster = new THREE.Raycaster();
			raycaster.setFromCamera( mouse, camera );

			var intersects = raycaster.intersectObject(city);

			if (intersects.length > 0){
				var pos = intersects[0].point;
				var objectData = {
					id: "-1",
					pos_x: pos.x,
					pos_y: pos.y,
					pos_z: pos.z,
					rot_x: 0,
					rot_y: 0,
					rot_z: 0
				};
				sendObjectCreation(objectData);
				switchModes(Modes.EDIT);
			}
			scene.remove(meshToAdd);
			meshToAdd = null;
		}
	}
}

function init() {

  var canvasWidth = window.innerWidth * .75;
  var canvasHeight = window.innerHeight - $('#jsviewport').offset().top;
  var canvasRatio = canvasWidth / canvasHeight;

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
  cameraControls = new THREE.OrbitControls(camera, renderer.domElement);
  camera.position.set(-480, 659, -619);
  cameraControls.target.set(4, 301, 92);
  
  raycaster = new THREE.Raycaster();

  // SCENE
  fillScene();
  addToDOM();

  objectControl = new THREE.TransformControls( camera, renderer.domElement );
  objectControl.addEventListener( 'change', render );


  render();
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
  	$.getJSON( "../public/models/smallcity/roadWaypoints.json", function( data ) {
		for (i = 0; i < data.road1.length; i++) {
			var pos = data.road1[i];
			lightPlaces.push(new THREE.Vector3(pos.x,pos.y,pos.z));
		}
	});

	loader = new THREE.JSONLoader();
	loader.load(
		'../public/models/smallcity/small.js',
		function ( geometry, materials ) {
			var material = new THREE.MeshFaceMaterial( materials );
			city = new THREE.Mesh( geometry, material );
			scene.add( city );
	});
	loader.load(
		'public/models/light/lampJoint.js',
		function ( geometry, materials ) {
			addableLampMesh = geometry;
	});
}

function addToDOM() {
  var container = document.getElementById('jsviewport');
  var canvas = container.getElementsByTagName('canvas');
  if (canvas.length > 0) {
    container.removeChild(canvas[0]);
  }
  container.appendChild(renderer.domElement);
  document.addEventListener( 'mousedown', onDocumentMouseDown, false );
  document.addEventListener( 'mouseup', onDocumentMouseUp, false );
  document.addEventListener( 'mousemove', onMouseMove, false );
  window.addEventListener('resize', onWindowResize, false);
}

function render() {
  requestAnimationFrame(render);
  var delta = clock.getDelta();
  if (currentMode != Modes.TRANSFORM){
	cameraControls.enabled = hasControl;
    cameraControls.update(delta);
  }
  else{
	cameraControls.enabled = false;
	objectControl.update();
  }
  if (currentMode == Modes.ADDANY && meshToAdd){
	raycaster.setFromCamera( mouse, camera );
	var intersection = raycaster.intersectObject(city);
	if (intersection.length > 0){
		meshToAdd.position.x = intersection[0].point.x;
		meshToAdd.position.y = intersection[0].point.y;
		meshToAdd.position.z = intersection[0].point.z;
	}
  }
  if (hasControl){
    updateCamera();
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

function bindUIFunctionality(){
	$("#viewing").collapse("hide");
	$("#editing").collapse("show");

	$(document).ready(function(){
		$("#viewMode").click(function(){
			$("#viewing").collapse("show");
			$("#editing").collapse("hide");
		});
		$("#editMode").click(function(){
			$("#viewing").collapse("hide");
			$("#editing").collapse("show");
		});
		$("#nightOn").click(function(){
			changeNightMode(true);
		});
		$("#nightOff").click(function(){
			changeNightMode(false);
		});
		$("#Add").click(function(){
			switchModes(Modes.ADD);
		});
		$("#AddAny").click(function(){
			switchModes(Modes.ADDANY);
		});
		$("#lampbtn").click(function(){
			showAddablePlaces();
		});
		$("#Delete").click(function(){
			deleteSelectedObject();
		});
		$("#Cancel").click(function(){
			cancelCurrentAction();
		});
		$("#menu").click(function(){
			$(".col-md-4").collapse("toggle");
			if (hasControl){
				$("#menudiv").collapse("show");
			}
		});
		$("#notebutton").click(function(){
			$("#notifications").collapse("toggle");
		});
		$("#Translate").click(function(){
			objectControl.setMode("translate");
		});
		$("#Rotate").click(function(){
			objectControl.setMode("rotate");
		});
		$(".col-md-4").mouseover(function(){
			inUI = true;
		});
		$(".col-md-4").mouseout(function(){
			inUI = false;
		});
	});
}
