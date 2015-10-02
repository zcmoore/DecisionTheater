var nightMode = false;

function updateNightMode(bool) {
	if (bool == true) {
		turnNightOn();
	} else {
		turnNightOff();
	}
}

function turnNightOn() {
	light.intensity = 0.0;
	light2.intensity = 0.0;
	nightMode = true;
}

function turnNightOff() {
	light.intensity = 1.0;
	light2.intensity = 1.0;
	nightMode = false;
}

function changeNightMode(bool) {
	if (hasControl) {
		if (bool == false && nightMode == true) { //night is off
			turnNightOff();
			sendUpdateLightMode(bool);
		} else if (bool == true && nightMode == false) { // night is on
			turnNightOn();
			sendUpdateLightMode(bool);
		}
	}
}

function updateMaterials() {
    editor.scene.traverse( function ( node ) {
        if ( node.material ) {
            node.material.needsUpdate = true;
            if ( node.material instanceof THREE.MeshFaceMaterial ) {
                for ( var i = 0; i < node.material.materials.length; i ++ ) {
                    node.material.materials[ i ].needsUpdate = true;
                }
            }
        }
    } );
}