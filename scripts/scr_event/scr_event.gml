if (argument0 == "alien"){
	if (instance_exists(obj_alienCard)){
		instance_destroy(obj_alienCard.id, true);
	}
	
	instance_create_layer(display_get_gui_width()/2, obj_planet.y, "instances", obj_alienCard);
}else if (argument0 == "environment"){
	if (instance_exists(obj_environmentCard)){
		instance_destroy(obj_environmentCard.id, true);
	}
	
	instance_create_layer(display_get_gui_width()/2, obj_star.y, "instances", obj_environmentCard);
}

return (argument1-1);