if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_optionsBTN, false, false)){
	
	if (!obj_spaceShip.pauseGame){
		obj_spaceShip.pauseGame = true;
		instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "instances", obj_optionsMenu);
	}else if (obj_spaceShip.pauseGame and !instance_exists(obj_optionsMenu)){
		instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "instances", obj_optionsMenu);
	}else if (obj_spaceShip.planetExtract or obj_spaceShip.nextObj > 0){
		obj_spaceShip.pauseGame = false;
	}else{
		scr_activateObj();
		
		instance_destroy(obj_textBox.id, true);
		instance_destroy(obj_optionsMenu.id, true);
		instance_destroy(obj_om_quit.id, true);
		instance_destroy(obj_om_controls.id, true);
		instance_destroy(obj_om_crew.id, true);
	}
	
}

if (instance_exists(obj_optionsMenu) and !obj_spaceShip.pauseGame){
	scr_activateObj();
	
	instance_destroy(obj_textBox.id, true);
	instance_destroy(obj_optionsMenu.id, true);
	instance_destroy(obj_om_quit.id, true);
	instance_destroy(obj_om_controls.id, true);
	instance_destroy(obj_om_crew.id, true);
}