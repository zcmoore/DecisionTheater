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
var lampLights = [];
var lightList = [];

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
		var objPos = objectData;
		var bones = lamp.skeleton.bones;
		var pos = bones[0].position;
		var spotLight = new THREE.SpotLight(0xFFFF99,0.0);
		if (nightMode){
			spotLight.intensity = 0.8;
		}
		lampLights.push(spotLight);
		spotLight.position.set(objPos.pos_x+pos.x,objPos.pos_y+pos.y,objPos.pos_z+pos.z);
		var lightTarget = new THREE.Object3D(1000,-1000,-1000);
		spotLight.target = lightTarget;
		scene.add(lightTarget);
		spotLight.castShadow = true;
		spotLight.shadowCameraNear = 500;
		spotLight.shadowCameraFar = 1000;
		spotLight.shadowCameraFov = 30;
		scene.add(spotLight);
		lightList.push(spotLight);
	}
	)
}

function onObjectListCreate(objectList) {
	for (i = 0; i < objectList.length; i++) {
		onObjectCreate(objectList[i]);
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
	for (i = 0; i < lampLights.length; i++) {
		lampLights[i].intensity = 0.8;
	}
}

function turnNightOff(){
	light.intensity = 1.0;
	light2.intensity = 1.0;
	nightMode = false;
	for (i = 0; i < lampLights.length; i++) {
		lampLights[i].intensity = 0.0;
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

function onMouseMove( event ) {
	if (hasControl){
		// calculate mouse position in normalized device coordinates
		// (-1 to +1) for both components
		var oldX = mouseX;
		var oldY = mouseY;
		mouseX = event.clientX;
		mouseY = event.clientY;
		if (oldX != mouseX && oldY != mouseY){
			var xAdjust = $('#jsviewport').offset().left;
			var yAdjust = $('#jsviewport').offset().top;

			var newX = mouseX-xAdjust;
			var newY = mouseY-yAdjust;

			mouse.x = ( newX / canvasWidth ) * 2 - 1;
			mouse.y = - ( newY / canvasHeight ) * 2 + 1;
			mouseMoved = true;
		}
	}

}

function onDocumentMouseDown( event ) {
	if (hasControl){
		mouseMoved = false;
	}
}

function onDocumentMouseUp( event ) {
	if (hasControl){
		if (mouse.x <= 1 && mouse.x >=-1 && mouse.y <= 1 && mouse.y >=-1 && event.button == 0 && mouseMoved == false){
			var raycaster = new THREE.Raycaster();
			raycaster.setFromCamera( mouse, camera );

			var intersects = raycaster.intersectObject(city);

			if (intersects.length > 0){
				var pos = intersects[0].point;
				//console.log("intersected at x: " + pos.x + " y: " + pos.y + " z: " + pos.z );
				/*loader.load(
				'public/models/light/lampJoint.js',

				function ( geometry, materials ) {
					var material = new THREE.MeshFaceMaterial( materials );
					var lamp = new THREE.SkinnedMesh( geometry, material );
					scene.add(lamp);
					lamp.position.setX(pos.x);
					lamp.position.setY(pos.y);
					lamp.position.setZ(pos.z);
					//var bones = lamp.skeleton.bones;
					var bone = bones[0];
					var spotLight = new THREE.SpotLight(0xFFFF99,0.0);
					if (nightMode){
						spotLight.intensity = 0.8;
					}
					lampLights.push(spotLight);
					spotLight.position.set(pos.x+bone.position.x,pos.y+bone.position.y,pos.z+bone.position.z);
					spotLight.target = new THREE.Object3D(0,-1000,0);
					spotLight.castShadow = true;
					spotLight.shadowCameraNear = 500;
					spotLight.shadowCameraFar = 1000;
					spotLight.shadowCameraFov = 30;
					scene.add(spotLight);
					lightList.push(spotLight);
					//console.log("lamp position x: " + lamp.position.x + "," + lamp.position.y + "," + lamp.position.z + ",");
				}
				)*/
				var objectData = {
					pos_x: pos.x,
					pos_y: pos.y,
					pos_z: pos.z
				};

				sendObjectCreation(objectData);
			}
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

  // SCENE
  fillScene();
  addToDOM();
  render();
}

function fillScene() {
  // SCENE
  scene = new THREE.Scene();
  scene.fog = new THREE.Fog(0x808080, 3000, 6000);
  // LIGHTS
  ambientLight = new THREE.AmbientLight(0x050505);
  light = new THREE.DirectionalLight(0xFFFFFF, 1.0);
  light.position.set(200, 400, 500);

  light2 = new THREE.DirectionalLight(0xFFFFFF, 1.0);
  light2.position.set(-400, 200, -300);

  scene.add(ambientLight);
  scene.add(light);
  scene.add(light2);

  /*Coordinates.drawGround({
    size: 1000
  });*/
	// instantiate a loader
	loader = new THREE.JSONLoader();

		// load a resource
		loader.load(
		// resource URL
		'../public/models/smallcity/small.js',
		// Function when resource is loaded
		function ( geometry, materials ) {
			var material = new THREE.MeshFaceMaterial( materials );
			city = new THREE.Mesh( geometry, material );
			scene.add( city );
	}
);
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

function animate() {
  requestAnimationFrame(animate);
  render();
}

function render() {
  requestAnimationFrame(render);
  var delta = clock.getDelta();
  cameraControls.enabled = hasControl;
  cameraControls.update(delta);
  updateCamera();
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
