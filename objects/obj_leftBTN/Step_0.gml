if (!obj_spaceShip.planetExtract){
	instance_destroy(id, true);
}else if (!obj_spaceShip.pauseGame){
	if (mouse_check_button_pressed(mb_left) and instance_position( mouse_x, mouse_y, obj_leftBTN) == id){

		if (id == obj_spaceShip.btnArr[0] and obj_spaceShip.extractFuel > 0){
			obj_spaceShip.extractFuel--;
			obj_spaceShip.totalCrew++;
		}else if (id == obj_spaceShip.btnArr[2] and obj_spaceShip.extractFood > 0){
			obj_spaceShip.extractFood--;
			obj_spaceShip.totalCrew++;
		}else if (id == obj_spaceShip.btnArr[4] and obj_spaceShip.extractShipParts > 0){
			obj_spaceShip.extractShipParts--;
			obj_spaceShip.totalCrew++;
		}
	}
}