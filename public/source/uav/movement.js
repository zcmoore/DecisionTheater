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
	rotateY = Math.atan2(movementVector.x,movementVector.z);
	if (actor.modelType == "person"){
		actor.rotation.y = rotateY;
	}
	else {
		actor.rotation.y = rotateY + Math.PI;
	}
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
	var rotateY;
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
	rotateY = Math.atan2(movementVector.x,movementVector.z);
	if (actor.modelType == "person"){
		actor.rotation.y = rotateY;
	}
	else {
		actor.rotation.y = rotateY + Math.PI;
	}
	actor.position.add(movementVector);

	if (movementAllowance > 1)
	{
		remainingDelta = movementAllowance / speed;
		moveActorAlongPath(remainingDelta, actor);
	}
}
