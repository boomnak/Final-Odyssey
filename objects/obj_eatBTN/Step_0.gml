if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_eatBTN, false, false)){
	if (obj_spaceShip.foodStorage > 0 and obj_spaceShip.crewHunger > 0){
		obj_spaceShip.crewHunger--;
		obj_spaceShip.foodStorage--;
	}
}
