if (mouse_check_button_pressed(mb_left) or alarm[0] == 0){
	instance_create_layer(0, 0, "instances", obj_panel_8);
	instance_destroy(id, true);
}else if (alarm[0] == -1){
	alarm[0] = 3 * room_speed;
}