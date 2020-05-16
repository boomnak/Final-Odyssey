if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_um_FuelUpgrade, false, false)){
	if (obj_spaceShip.shipParts >= 50){
		obj_spaceShip.shipParts -= 50;
		obj_spaceShip.fuelTank += 50;
		obj_spaceShip.shipFuel = obj_spaceShip.fuelTank;
	}
}