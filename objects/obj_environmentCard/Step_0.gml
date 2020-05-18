if ((mouse_check_button_pressed(mb_left) and 
	instance_position(mouse_x, mouse_y, obj_environmentCard) == id) 
	or !obj_spaceShip.planetExtract or obj_spaceShip.pauseGame){
	instance_destroy(id, true);
}

if (alarm[5] == 0){
	image_speed = 0;
	image_index = 2;
}