if (!obj_spaceShip.planetExtract){
	instance_destroy(id, true);
}else{
	if (mouse_check_button_pressed(mb_left) and instance_position( mouse_x, mouse_y, obj_rightBTN) == id ){
		if (obj_spaceShip.totalCrew > 0){
			if (id == obj_spaceShip.btnArr[1] and obj_spaceShip.shipFuel < obj_spaceShip.fuelTank and scr_rCheck("fuel")){
				obj_spaceShip.extractFuel++;
				obj_spaceShip.totalCrew--;
			}else if (id == obj_spaceShip.btnArr[3] and obj_spaceShip.foodStorage < obj_spaceShip.foodBox and scr_rCheck("food")){
				obj_spaceShip.extractFood++;
				obj_spaceShip.totalCrew--;
			}else if (id == obj_spaceShip.btnArr[5] and obj_spaceShip.shipParts < 50 and scr_rCheck("parts")){
				obj_spaceShip.extractShipParts++;
				obj_spaceShip.totalCrew--;
			}
		}
	}
}