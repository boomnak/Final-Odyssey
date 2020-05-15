if (instance_position(mouse_x, mouse_y, obj_recruitmentCard) == id){ 
	if (mouse_check_button_pressed(mb_right)){
		instance_destroy(id, true);
	}else if (mouse_check_button_pressed(mb_left)){
		obj_spaceShip.totalCrew++;
		instance_destroy(id, true);
	}
}else if (keyboard_check(vk_space) or !obj_spaceShip.planetExtract){
	instance_destroy(id, true);
}

if (alarm[5] == 0){
	image_speed = 0;
	image_index = 0;
}
