var camera, scene, renderer;
var cameraControls, effectController;
var clock = new THREE.Clock();
var previousCameraData = {init: true};
var mouse = new THREE.Vector2();

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

function onWindowResize() {
  var canvasWidth = window.innerWidth * .75;
  var canvasHeight = window.innerHeight - $('#jsviewport').offset().top;

  renderer.setSize(canvasWidth, canvasHeight);

  camera.aspect = canvasWidth / canvasHeight;
  camera.updateProjectionMatrix();
}

function onMouseMove( event ) {

	// calculate mouse position in normalized device coordinates
	// (-1 to +1) for both components

	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;

}

function onDocumentMouseDown( event ) {
	//var projector = new THREE.Projector();
	var raycaster = new THREE.Raycaster();
	// update the picking ray with the camera and mouse position
	//var ray = projector.pickingRay( mouse, camera );
	raycaster.setFromCamera( mouse, camera );

	// calculate objects intersecting the picking ray
	var intersects = raycaster.intersectObjects( scene.children,true);

	for ( var i = 0; i < intersects.length; i++ ) {
		intersects[ i ].object.material.color.set( 0xff0000 );
	}

	//renderer.render( scene, camera );

}

function init() {
  var canvasWidth = window.innerWidth * .75;
  var canvasHeight = window.innerHeight - $('#jsviewport').offset().top;
  var canvasRatio = canvasWidth / canvasHeight;

  // RENDERER
  renderer = new THREE.WebGLRenderer({
    antialias: true
  });
  //renderer.gammaInput = true;
  //renderer.gammaOutput = true;
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
	var loader = new THREE.JSONLoader();

		// load a resource
		loader.load(
		// resource URL
		'public/models/smallcity/small.js',
		// Function when resource is loaded
		function ( geometry, materials ) {
			var material = new THREE.MeshFaceMaterial( materials );
			var object = new THREE.Mesh( geometry, material );
			scene.add( object );
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
