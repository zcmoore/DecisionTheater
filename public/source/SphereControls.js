/**
 * POVControls by zcmoore adapted from code and concept by:
 * @author qiao / https://github.com/qiao
 * @author mrdoob / http://mrdoob.com
 * @author alteredq / http://alteredqualia.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author erich666 / http://erichaines.com
 */

// This is a set of controls to simulate a PointOfView reference. The POV can be "moved" by calling
// POVControls.translate(Vector3)
// This set of controls performs rotation, zooming, and allows translation (panning). It maintains
// the "up" direction as +Y, unlike the TrackballControls, and uses the root object as its origin,
// unlike OrbitControls. Touch on tablet and phones is
// supported.
//
//    Rotate View - left mouse / touch: one finger move
//    Zoom - middle mouse, or mousewheel / touch: two finger spread or squish
THREE.POVControls = function ( object, domElement ) {

	this.domElement.addEventListener( 'contextmenu', function ( event ) { event.preventDefault(); }, false );
	this.domElement.addEventListener( 'mousedown', onMouseDown, false );
	this.domElement.addEventListener( 'mousewheel', onMouseWheel, false );
	this.domElement.addEventListener( 'DOMMouseScroll', onMouseWheel, false ); // firefox

	this.domElement.addEventListener( 'touchstart', touchstart, false );
	this.domElement.addEventListener( 'touchend', touchend, false );
	this.domElement.addEventListener( 'touchmove', touchmove, false );

	window.addEventListener( 'keydown', onKeyDown, false );

	// force an update at start
	this.update();

};

THREE.POVControls.prototype = Object.create( THREE.EventDispatcher.prototype );
THREE.POVControls.prototype.constructor = THREE.POVControls;
