if (!obj_spaceShip.planetExtract){
	instance_destroy(id, true);
}else{
	if (mouse_check_button_pressed(mb_left) and instance_position( mouse_x, mouse_y, obj_rightBTN) == id ){
		if (obj_spaceShip.totalCrew > 0){
			if (id == obj_spaceShip.btnArr[1]){
				obj_spaceShip.extractFuel++;
				obj_spaceShip.totalCrew--;
			}else if (id == obj_spaceShip.btnArr[3]){
				obj_spaceShip.extractFood++;
				obj_spaceShip.totalCrew--;
			}else if (id == obj_spaceShip.btnArr[5]){
				obj_spaceShip.extractShipParts++;
				obj_spaceShip.totalCrew--;
			}
		}
	}
}