if (nextObj > 0 or planetExtract){
	pauseGame = !pauseGame;
	
	if (pauseGame){
		instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "instances", obj_shipUpgradeMenu);
	}else if (instance_exists(obj_shipUpgradeMenu)){
		instance_destroy(obj_shipUpgradeMenu.id, true);
		instance_destroy(obj_um_FuelUpgrade.id, true);
		instance_destroy(obj_um_FoodUpgrade.id, true);
	}
}