x = obj_calamityDistMenu.x - sprite_get_width(spr_calamityDistMenu)/2;

if (obj_timer.gameTime >= (5 * n)){
	calamitySpeed += 1;
	n++
}

image_xscale = obj_spaceShip.calScale / room_speed;