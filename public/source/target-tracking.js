TRACKING.mouse = new THREE.Vector2();

/**
 * This method, or equivolent calculation (for smaller viewports), should be
 * called on each mouse move event, in order for the Raycaster calculations
 * to be accurate
 */
TRACKING.onMouseMove = function( event ) {
	// calculate mouse position in normalized device coordinates
	// (-1 to +1) for both components

	TRACKING.mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	TRACKING.mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
}

TRACKING.trace = function( scene, camera, mouse ) {
	mouse = (mouse === undefined) ? TRACKING.mouse : mouse;

	var raycaster = new THREE.Raycaster();
	raycaster.setFromCamera( mouse, camera );

	var intersects = raycaster.intersectObjects(scene.children);
	if (intersects.length > 0) {
		var collidingObject = intersects[0].object;
		var tracker = new TRACKING.TrackingTarget( collidingObject );
		return tracker;
	}
}

TRACKING.TrackingTarget = function( sourceObject ) {

	// Object in the scene that is being tracked
	this.source = sourceObject;

	this.category = "NONE";

	this.tagIndex = -1;

};
