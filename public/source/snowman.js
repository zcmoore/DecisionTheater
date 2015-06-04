function createHat(x, y, z, cylinderMaterial) {
	var hatBaseRadius = 60;
	var hatBaseHeight = 10;
	var hatBaseX = x;
	var hatBaseY = y - (hatBaseHeight / 2);
	var hatBaseZ = z;
	
	var hatTopRadius = 40;
	var hatTopHeight = 70;
	var hatTopX = x;
	var hatTopY = y + (hatTopHeight / 2);
	var hatTopZ = z;
	
	// Hat Base
	var cylinder;
	cylinder = new THREE.Mesh(
		new THREE.CylinderGeometry( hatBaseRadius, hatBaseRadius, hatBaseHeight ), cylinderMaterial );
	cylinder.position.x = hatBaseX;
	cylinder.position.y = hatBaseY;
	cylinder.position.z = hatBaseZ;
	scene.add( cylinder );
	
	// Hat Top
	cylinder = new THREE.Mesh(
		new THREE.CylinderGeometry( hatTopRadius, hatTopRadius, hatTopHeight ), cylinderMaterial );
	cylinder.position.x = hatTopX;
	cylinder.position.y = hatTopY;
	cylinder.position.z = hatTopZ;
	scene.add( cylinder );
}

function createSnowman(x, y, z) {
	var sphereMaterial = new THREE.MeshLambertMaterial( { color: 0xFFFFFF } );
	var noseMaterial = new THREE.MeshLambertMaterial( { color: 0xFFA500 } );
	var hatMaterial = new THREE.MeshLambertMaterial( { color: 0x444444 } );
	var radiusTop = 50;
	var radiusMiddle = 70;
	var radiusBottom = 100;
	var eyeRadius = 5;
	var eyeOffsetX = 45;
	var eyeOffsetY = 10;
	var eyeOffsetZ = 15;
	var radialOffsetScale = 1.7; // Adjusts how much each sphere overlaps with the sphere below it. 2.0 is "barely touching". >2 is "not touching" and <2 has overlap
	
	// Bottom Sphere
	var sphere;
	sphere = new THREE.Mesh(
		new THREE.SphereGeometry( radiusBottom ), sphereMaterial );
	sphere.position.x = x;
	sphere.position.y = y + radiusBottom;
	sphere.position.z = z;
	scene.add( sphere );
	
	// Middle Sphere
	sphere = new THREE.Mesh(
		new THREE.SphereGeometry( radiusMiddle ), sphereMaterial );
	sphere.position.x = x;
	sphere.position.y = y + radialOffsetScale*radiusBottom + radiusMiddle;
	sphere.position.z = z;
	scene.add( sphere );
	
	// Top Sphere
	sphere = new THREE.Mesh(
		new THREE.SphereGeometry( radiusTop ), sphereMaterial );
	sphere.position.x = x;
	sphere.position.y = y + radialOffsetScale*radiusBottom + radialOffsetScale*radiusMiddle + radiusTop;
	sphere.position.z = z;
	scene.add( sphere );
	
	// Eye
	sphereMaterial = new THREE.MeshLambertMaterial( { color: 0x000000 } );
	sphere = new THREE.Mesh(
		new THREE.SphereGeometry( eyeRadius ), sphereMaterial );
	sphere.position.x = x - eyeOffsetX;
	sphere.position.y = y + radialOffsetScale*radiusBottom + radialOffsetScale*radiusMiddle + radiusTop + eyeOffsetY;
	sphere.position.z = z + eyeOffsetZ;
	scene.add( sphere );
	
	// Eye
	sphere = new THREE.Mesh(
		new THREE.SphereGeometry( eyeRadius ), sphereMaterial );
	sphere.position.x = x - eyeOffsetX;
	sphere.position.y = y + radialOffsetScale*radiusBottom + radialOffsetScale*radiusMiddle + radiusTop + eyeOffsetY;
	sphere.position.z = z - eyeOffsetZ;
	scene.add( sphere );
	
	// Hat
	createHat(x, y + radialOffsetScale*radiusBottom + radialOffsetScale*radiusMiddle + 2*radiusTop, z, hatMaterial);
	
	// Nose
	var nose = new THREE.Mesh(
		new THREE.CylinderGeometry( 10, 0, radiusTop * 1.2 ), noseMaterial );
	nose.position.x = x - 60;
	nose.position.y = y + radialOffsetScale*radiusBottom + radialOffsetScale*radiusMiddle + radiusTop - 5;
	nose.position.z = z;
	nose.rotation.z = -Math.PI / 2;
	scene.add( nose );
}


