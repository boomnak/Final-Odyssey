if (!obj_spaceShip.pauseGame and !obj_spaceShip.planetExtract){
	if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_speedBTN, false, false)){
		if (obj_spaceShip.shipFuel >= ((obj_spaceShip.shipSpeed+1) * (obj_spaceShip.shipSpeed+1)) and
			obj_spaceShip.nextObj >= (obj_spaceShip.shipSpeed + 1)){
			obj_spaceShip.shipSpeed ++;
		}
	}else if (mouse_check_button_pressed(mb_right) and collision_point(mouse_x, mouse_y, obj_speedBTN, false, false)){
		if (obj_spaceShip.shipSpeed > 0){
			obj_spaceShip.shipSpeed --;
		}
	}
}
