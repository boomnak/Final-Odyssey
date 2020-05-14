if (mouse_check_button_pressed(mb_left) or image_alpha == 1){
	instance_create_layer(0, 0, "instances", obj_panel_6);
	instance_destroy(id, true);
}else{
	if (alarm[0] == -1){
		alarm[0] = 0.05 * room_speed;
	}else if (alarm[0] == 0){
		if (image_alpha < 1){
			image_alpha += 0.01;
		}	
	}
}