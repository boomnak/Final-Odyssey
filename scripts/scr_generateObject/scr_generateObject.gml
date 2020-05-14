if (argument0 == "planet"){
	return instance_create_layer(argument1, argument2, "instances", obj_planet);	//creates the object and returns id
}else if (argument0 == "star"){
	return instance_create_layer(argument1, argument2, "instances", obj_star);
}else if (argument0 == "asteroid"){
	return instance_create_layer(argument1, argument2, "instances", obj_asteroid);
}

return 0;