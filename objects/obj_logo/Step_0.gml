if (alarm[0] == -1){
	alarm[0] = 3 * room_speed;
}else if (alarm[0] == 0){
	room_goto(rm_mainMenu);
	instance_destroy(id, true);
}