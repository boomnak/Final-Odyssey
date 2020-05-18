if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_upgradeBTN, false, false)){
	
	if (!obj_spaceShip.pauseGame){
		obj_spaceShip.pauseGame = true;
		instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "instances", obj_shipUpgradeMenu);
	}else if (obj_spaceShip.pauseGame and !instance_exists(obj_shipUpgradeMenu)){
		instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "instances", obj_shipUpgradeMenu);
	}else if (obj_spaceShip.planetExtract or obj_spaceShip.nextObj > 0){
		obj_spaceShip.pauseGame = false;
	}else{
		instance_destroy(obj_shipUpgradeMenu.id, true);
		instance_destroy(obj_um_FuelUpgrade.id, true);
		instance_destroy(obj_um_FoodUpgrade.id, true);
	}
	
}

if (instance_exists(obj_shipUpgradeMenu) and !obj_spaceShip.pauseGame){
	instance_destroy(obj_shipUpgradeMenu.id, true);
	instance_destroy(obj_um_FuelUpgrade.id, true);
	instance_destroy(obj_um_FoodUpgrade.id, true);
}