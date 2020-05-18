x = obj_calamityDistMenu.x - sprite_get_width(spr_calamityDistMenu)/2;

if (obj_timer.gameTime >= 5){
	calamitySpeed = obj_timer.gameTime-3;	
}

image_xscale = obj_spaceShip.calScale / room_speed;