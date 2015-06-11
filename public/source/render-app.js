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
	'public/models/streetlamp/sl.js',
	
	function ( geometry, materials ) {
		var material = new THREE.MeshFaceMaterial( materials );
		var lamp = new THREE.Mesh( geometry, material );
		scene.add(lamp);
		lamp.position.setX(objectData.pos_x);
		lamp.position.setY(objectData.pos_y);
		lamp.position.setZ(objectData.pos_z);
	}
	)
}

function onObjectListCreate(objectList) {
	for (i = 0; i < objectList.length; i++) { 
		onObjectCreate(objectList[i]);
	}
}

function onWindowResize() {
  canvasWidth = window.innerWidth * .75;
  canvasHeight = window.innerHeight - $('#jsviewport').offset().top;

  renderer.setSize(canvasWidth, canvasHeight);

  camera.aspect = canvasWidth / canvasHeight;
  camera.updateProjectionMatrix();
}

function onMouseMove( event ) {

	mouseMoved = true;
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

function onDocumentMouseDown( event ) {
	mouseMoved = false;
}

function onDocumentMouseUp( event ) {
	if (mouse.x <= 1 && mouse.x >=-1 && mouse.y <= 1 && mouse.y >=-1 && event.button == 0 && mouseMoved == false){
		var raycaster = new THREE.Raycaster();
		raycaster.setFromCamera( mouse, camera );	

		var intersects = raycaster.intersectObject(city);

		if (intersects.length > 0){
			var pos = intersects[0].point;
			//console.log("intersected at x: " + pos.x + " y: " + pos.y + " z: " + pos.z );
			loader.load(
			'public/models/streetlamp/sl.js',
			
			function ( geometry, materials ) {
				var material = new THREE.MeshFaceMaterial( materials );
				var lamp = new THREE.Mesh( geometry, material );
				scene.add(lamp);
				lamp.position.setX(pos.x);
				lamp.position.setY(pos.y);
				lamp.position.setZ(pos.z);
				//console.log("lamp position x: " + lamp.position.x + "," + lamp.position.y + "," + lamp.position.z + ",");
			}
			)
			var objectData = {
				pos_x: pos.x,
				pos_y: pos.y,
				pos_z: pos.z
			};
			
			sendObjectCreation(objectData);
			
			var geometry = new THREE.SphereGeometry( 5, 32, 32 );
			var material = new THREE.MeshBasicMaterial( {color: 0xffff00} );
			var sphere = new THREE.Mesh( geometry, material );
			scene.add( sphere );
			sphere.position.setX(pos.x);
			sphere.position.setY(pos.y);
			sphere.position.setZ(pos.z);
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
  var ambientLight = new THREE.AmbientLight(0x222222);
  var light = new THREE.DirectionalLight(0xFFFFFF, 1.0);
  light.position.set(200, 400, 500);

  var light2 = new THREE.DirectionalLight(0xFFFFFF, 1.0);
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
		'public/models/smallcity/small.js',
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
