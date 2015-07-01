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

	this.object = object;
	this.domElement = ( domElement !== undefined ) ? domElement : document;

	// Set to false to disable this control
	this.enabled = true;

	// The location of focus
	this.target = new THREE.Vector3();

	// center is old, deprecated; use "target" instead
	this.center = this.target;

	// Set to true to disable this control
	this.noZoom = false;
	this.zoomSpeed = 1.0;

	// Limits to how far you can zoom in and out
	this.minZoom = 0;
	this.maxZoom = Infinity;

	// Set to true to disable this control
	this.noRotate = false;
	this.keyRotateSpeed = 7.0;

	// Set to true to disable use of the keys
	this.noKeys = false;

	// The four arrow keys
	this.keys = { LEFT: 37, UP: 38, RIGHT: 39, DOWN: 40 };

	// Mouse buttons
	this.mouseButtons = { ROTATE: THREE.MOUSE.LEFT, ZOOM: THREE.MOUSE.MIDDLE };

	// Mouse buttons
	this.fingerControls = { ROTATE: 1, ZOOM: 2 };

	////////////
	// internals

	var scope = this;

	var EPS = 0.000001;

	var rotationStart = new THREE.Vector2();
	var rotationEnd = new THREE.Vector2();
	var rotationDelta = new THREE.Vector2();
	var rotationOffset = new THREE.Vector3();

	var offset = new THREE.Vector3();

	var dollyStart = new THREE.Vector2();
	var dollyEnd = new THREE.Vector2();
	var dollyDelta = new THREE.Vector2();

	var scale = 1;
	var rotation = new THREE.Vector3();
	var translation = new THREE.Vector3();

	var lastPosition = new THREE.Vector3();
	var lastQuaternion = new THREE.Quaternion();

	var STATE = { NONE : -1, ZOOM : 0, ROTATE : 1, TOUCH_ZOOM : 2, TOUCH_ROTATE : 3 };

	var state = STATE.NONE;

	// for reset

	this.target0 = this.target.clone();
	this.position0 = this.object.position.clone();
	this.zoom0 = this.object.zoom;

	// so camera.up is the orbit axis
	var quat = new THREE.Quaternion().setFromUnitVectors( object.up, new THREE.Vector3( 0, 1, 0 ) );
	var quatInverse = quat.clone().inverse();

	// events
	var changeEvent = { type: 'change' };
	var startEvent = { type: 'start' };
	var endEvent = { type: 'end' };

	// pass in distance in world space to move left
	this.rotateLeft = function ( distance ) {

		var te = this.object.matrix.elements;

		// get X column of matrix
		rotationOffset.set( te[ 0 ], te[ 1 ], te[ 2 ] );
		rotationOffset.multiplyScalar( - distance );

		rotation.add( rotationOffset );

	};

	// pass in distance in world space to move up
	this.rotateUp = function ( distance ) {

		var te = this.object.matrix.elements;

		// get Y column of matrix
		rotationOffset.set( te[ 4 ], te[ 5 ], te[ 6 ] );
		rotationOffset.multiplyScalar( distance );

		rotation.add( rotationOffset );

	};

	// pass in x,y of change desired in pixel space,
	// right and down are positive
	this.rotate = function ( deltaX, deltaY ) {

		var element = scope.domElement === document ? scope.domElement.body : scope.domElement;

		if ( scope.object instanceof THREE.PerspectiveCamera ) {

			// perspective
			var position = scope.object.position;
			var offset = position.clone().sub( scope.target );
			var targetDistance = offset.length();

			// half of the fov is center to top of screen
			targetDistance *= Math.tan( ( scope.object.fov / 2 ) * Math.PI / 180.0 );

			// we actually don't use screenWidth, since perspective camera is fixed to screen height
			scope.rotateLeft( 2 * deltaX * targetDistance / element.clientHeight );
			scope.rotateUp( 2 * deltaY * targetDistance / element.clientHeight );

		} else if ( scope.object instanceof THREE.OrthographicCamera ) {

			// orthographic
			scope.rotateLeft( deltaX * (scope.object.right - scope.object.left) / element.clientWidth );
			scope.rotateUp( deltaY * (scope.object.top - scope.object.bottom) / element.clientHeight );

		} else {

			// camera neither orthographic or perspective
			console.warn( 'WARNING: POVControls.js encountered an unknown camera type - rotation disabled.' );

		}

	};

	this.zoomIn = function ( dollyScale ) {

		if ( dollyScale === undefined ) {

			dollyScale = getZoomScale();

		}

		if ( scope.object instanceof THREE.PerspectiveCamera ) {

			scale /= dollyScale;

		} else if ( scope.object instanceof THREE.OrthographicCamera ) {

			scope.object.zoom = Math.max( this.minZoom, Math.min( this.maxZoom, this.object.zoom * dollyScale ) );
			scope.object.updateProjectionMatrix();
			scope.dispatchEvent( changeEvent );

		} else {

			console.warn( 'WARNING: POVControls.js encountered an unknown camera type - dolly/zoom disabled.' );

		}

	};

	this.zoomOut = function ( dollyScale ) {

		if ( dollyScale === undefined ) {

			dollyScale = getZoomScale();

		}

		if ( scope.object instanceof THREE.PerspectiveCamera ) {

			scale *= dollyScale;

		} else if ( scope.object instanceof THREE.OrthographicCamera ) {

			scope.object.zoom = Math.max( this.minZoom, Math.min( this.maxZoom, this.object.zoom / dollyScale ) );
			scope.object.updateProjectionMatrix();
			scope.dispatchEvent( changeEvent );

		} else {

			console.warn( 'WARNING: POVControls.js encountered an unknown camera type - dolly/zoom disabled.' );

		}

	};

	this.update = function () {

		// rotate
		this.target.add( rotation );

		//translate
		this.target.add( translation );
		this.object.position.add( translation );

		// zoom
		this.object.fov *= scale;
  		this.object.updateProjectionMatrix();

		// update camera view
		this.object.lookAt( this.target );

		scale = 1;
		rotation.set( 0, 0, 0 );
		translation.set( 0, 0, 0 );

		if ( lastPosition.distanceToSquared( this.object.position ) > EPS
		    || 8 * (1 - lastQuaternion.dot(this.object.quaternion)) > EPS ) {

			this.dispatchEvent( changeEvent );

			lastPosition.copy( this.object.position );
			lastQuaternion.copy (this.object.quaternion );
		}
	};

	this.translate = function (amount) {
		translation.add(amount);
	}

	this.reset = function () {

		state = STATE.NONE;

		this.target.copy( this.target0 );
		this.object.position.copy( this.position0 );
		this.object.zoom = this.zoom0;

		this.object.updateProjectionMatrix();
		this.dispatchEvent( changeEvent );

		this.update();

	};

	function getZoomScale() {

		return Math.pow( 0.95, scope.zoomSpeed );

	}

	function onMouseDown( event ) {

		if ( scope.enabled === false ) return;
		event.preventDefault();

		if ( event.button === scope.mouseButtons.ZOOM ) {
			if ( scope.noZoom === true ) return;

			state = STATE.ZOOM;

			dollyStart.set( event.clientX, event.clientY );

		} else if ( event.button === scope.mouseButtons.ROTATE ) {
			if ( scope.noRotate === true ) return;

			state = STATE.ROTATE;

			rotationStart.set( event.clientX, event.clientY );

		}

		if ( state !== STATE.NONE ) {
			document.addEventListener( 'mousemove', onMouseMove, false );
			document.addEventListener( 'mouseup', onMouseUp, false );
			scope.dispatchEvent( startEvent );
		}

	}

	function onMouseMove( event ) {

		if ( scope.enabled === false ) return;

		event.preventDefault();

		var element = scope.domElement === document ? scope.domElement.body : scope.domElement;

		if ( state === STATE.ZOOM ) {

			if ( scope.noZoom === true ) return;

			dollyEnd.set( event.clientX, event.clientY );
			dollyDelta.subVectors( dollyEnd, dollyStart );

			if ( dollyDelta.y > 0 ) {

				scope.zoomIn();

			} else if ( dollyDelta.y < 0 ) {

				scope.zoomOut();

			}

			dollyStart.copy( dollyEnd );

		} else if ( state === STATE.ROTATE ) {

			if ( scope.noRotate === true ) return;

			rotationEnd.set( event.clientX, event.clientY );
			rotationDelta.subVectors( rotationEnd, rotationStart );

			scope.rotate( rotationDelta.x, rotationDelta.y );

			rotationStart.copy( rotationEnd );

		}

		if ( state !== STATE.NONE ) scope.update();

	}

	function onMouseUp( /* event */ ) {

		if ( scope.enabled === false ) return;

		document.removeEventListener( 'mousemove', onMouseMove, false );
		document.removeEventListener( 'mouseup', onMouseUp, false );
		scope.dispatchEvent( endEvent );
		state = STATE.NONE;

	}

	function onMouseWheel( event ) {

		if ( scope.enabled === false || scope.noZoom === true || state !== STATE.NONE ) return;

		event.preventDefault();
		event.stopPropagation();

		var delta = 0;

		if ( event.wheelDelta !== undefined ) { // WebKit / Opera / Explorer 9

			delta = event.wheelDelta;

		} else if ( event.detail !== undefined ) { // Firefox

			delta = - event.detail;

		}

		if ( delta > 0 ) {

			scope.zoomOut();

		} else if ( delta < 0 ) {

			scope.zoomIn();

		}

		scope.update();
		scope.dispatchEvent( startEvent );
		scope.dispatchEvent( endEvent );

	}

	function onKeyDown( event ) {

		if ( scope.enabled === false || scope.noKeys === true || scope.noRotate === true ) return;

		switch ( event.keyCode ) {

			case scope.keys.UP:
				scope.rotate( 0, scope.keyRotateSpeed );
				scope.update();
				break;

			case scope.keys.DOWN:
				scope.rotate( 0, - scope.keyRotateSpeed );
				scope.update();
				break;

			case scope.keys.LEFT:
				scope.rotate( scope.keyRotateSpeed, 0 );
				scope.update();
				break;

			case scope.keys.RIGHT:
				scope.rotate( - scope.keyRotateSpeed, 0 );
				scope.update();
				break;

		}

	}

	function touchstart( event ) {

		if ( scope.enabled === false ) return;

		var touchValue = event.touches.length;

		if (touchValue === scope.fingerControls.ROTATE)
		{

			if ( scope.noRotate === true ) return;
			state = STATE.TOUCH_ROTATE;
			rotationStart.set( event.touches[ 0 ].pageX, event.touches[ 0 ].pageY );

		}
		else if (touchValue === scope.fingerControls.ZOOM)
		{

			state = STATE.TOUCH_ZOOM;

			var dx = event.touches[ 0 ].pageX - event.touches[ 1 ].pageX;
			var dy = event.touches[ 0 ].pageY - event.touches[ 1 ].pageY;
			var distance = Math.sqrt( dx * dx + dy * dy );
			dollyStart.set( 0, distance );

		}
		else
		{
			state = STATE.NONE;
		}

		if ( state !== STATE.NONE ) scope.dispatchEvent( startEvent );

	}

	function touchmove( event ) {

		if ( scope.enabled === false ) return;

		event.preventDefault();
		event.stopPropagation();

		var element = scope.domElement === document ? scope.domElement.body : scope.domElement;
		var touchValue = event.touches.length;

		if (touchValue === scope.fingerControls.ROTATE)
		{

			if ( scope.noRotate === true ) return;
			if ( state !== STATE.TOUCH_ROTATE ) return;

			rotationEnd.set( event.touches[ 0 ].pageX, event.touches[ 0 ].pageY );
			rotationDelta.subVectors( rotationEnd, rotationStart );

			scope.rotate( rotationDelta.x, rotationDelta.y );

			rotationStart.copy( rotationEnd );

			scope.update();

		}
		else if (touchValue === scope.fingerControls.ZOOM)
		{

			if ( scope.noZoom === true ) return;
			if ( state !== STATE.TOUCH_ZOOM ) return;

			var dx = event.touches[ 0 ].pageX - event.touches[ 1 ].pageX;
			var dy = event.touches[ 0 ].pageY - event.touches[ 1 ].pageY;
			var distance = Math.sqrt( dx * dx + dy * dy );

			dollyEnd.set( 0, distance );
			dollyDelta.subVectors( dollyEnd, dollyStart );

			if ( dollyDelta.y > 0 ) {

				scope.zoomOut();

			} else if ( dollyDelta.y < 0 ) {

				scope.zoomIn();

			}

			dollyStart.copy( dollyEnd );

			scope.update();

		}
		else
		{
			state = STATE.NONE;
		}

	}

	function touchend( /* event */ ) {

		if ( scope.enabled === false ) return;

		scope.dispatchEvent( endEvent );
		state = STATE.NONE;

	}

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
