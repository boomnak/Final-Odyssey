if (room_get_name(room) == "rm_mainMenu"){
	instance_destroy(id, true);
}else if (room_get_name(room) == "rm_space"){
	days_survived = obj_timer.gameTime;
	crew = obj_spaceShip.curCrew;
}else if (room_get_name(room) == "rm_gameOver"){
	
	if (alarm[10] == -1){
		alarm[10] = 5 * room_speed;
	}else if (mouse_check_button_pressed(mb_left) or alarm[10] == 0){
		room_goto(rm_mainMenu);
	}
}