if (argument0 == "fuel"){
	if (instance_exists(obj_planet)){
		if (obj_planet.planetFuel > 0){
			return true;
		}else {
			return false;
		}
	}else if (instance_exists(obj_star)){
		if (obj_star.starFuel > 0){
			return true;
		}else {
			return false;
		}
	}else if (instance_exists(obj_asteroid)){
		if (obj_asteroid.asteroidFuel > 0){
			return true;
		}else {
			return false;
		}
	}
}else if (argument0 == "food"){
	if (obj_planet.planetFood > 0){
		return true;
	}else{
		return false;
	}
}else if (argument0 == "parts"){
	if (instance_exists(obj_planet)){
		if (obj_planet.planetParts > 0){
			return true;
		}else{
			return false;
		}
	}else if (instance_exists(obj_asteroid)){
		if (obj_asteroid.asteroidParts > 0){
			return true;
		}else{
			return false;
		}
	}
}

return false;