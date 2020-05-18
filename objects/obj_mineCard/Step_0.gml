if (!added){
	if (select == 0){
		if ((obj_spaceShip.shipParts + parts) <= 50){
			obj_spaceShip.shipParts += parts;
		}else {
			obj_spaceShip.shipParts = 50;
		}
	}else if (select == 1){
		if ((obj_spaceShip.shipFuel + fuel) <= obj_spaceShip.fuelTank){
			obj_spaceShip.shipFuel += fuel;
		}else{
			obj_spaceShip.shipFuel = obj_spaceShip.fuelTank;
		}
	}
	
	added = true;
}

if ((mouse_check_button_pressed(mb_left) and 
	instance_position(mouse_x, mouse_y, obj_mineCard) == id) 
	or !obj_spaceShip.planetExtract or obj_spaceShip.pauseGame){
	instance_destroy(id, true);
}

if (alarm[5] == 0){
	image_speed = 0;
	image_index = 0;
}