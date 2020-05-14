if (collision_point(mouse_x, mouse_y, obj_playGame, false, false)){

	image_index = 1;

	if (mouse_check_button_pressed(mb_left)){
		instance_destroy(id, true);
	
		room_goto(rm_story);
	}
}else{
	image_index = 0;
}