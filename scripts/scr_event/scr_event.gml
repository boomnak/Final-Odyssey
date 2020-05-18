if (argument0 == "alien"){
	if (instance_exists(obj_alienCard)){
		instance_destroy(obj_alienCard.id, true);
		instance_create_layer(display_get_gui_width()/2, obj_planet.y, "instances", obj_alienCard);
	}else if (instance_exists(obj_recruitmentCard)){
		
	}else{
		instance_create_layer(display_get_gui_width()/2, obj_planet.y, "instances", obj_alienCard);
	}
	
}else if (argument0 == "environment"){
	if (instance_exists(obj_environmentCard)){
		instance_destroy(obj_environmentCard.id, true);
	}
	
	instance_create_layer(display_get_gui_width()/2, obj_star.y, "instances", obj_environmentCard);
}else if (argument0 == "crew"){
	if (instance_exists(obj_alienCard)){
		instance_destroy(obj_alienCard.id, true);
		instance_create_layer(display_get_gui_width()/2, obj_planet.y, "instances", obj_recruitmentCard);
	}else if (instance_exists(obj_recruitmentCard)){

	}else{
		instance_create_layer(display_get_gui_width()/2, obj_planet.y, "instances", obj_recruitmentCard);
	}
}else if (argument0 == "mine"){
	if (instance_exists(obj_mineCard)){
		instance_destroy(obj_mineCard.id, true);
	}
	
	instance_create_layer(display_get_gui_width()/2, obj_asteroid.y, "instances", obj_mineCard);
}

return (argument1-1);