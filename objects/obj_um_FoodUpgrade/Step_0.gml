if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_um_FoodUpgrade, false, false)){
	if (obj_spaceShip.shipParts >= 50){
		obj_spaceShip.shipParts -= 50;
		obj_spaceShip.foodBox += 50;
		obj_spaceShip.foodStorage = obj_spaceShip.foodBox;
	}
}
