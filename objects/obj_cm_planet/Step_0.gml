if (obj_spaceShip.nextObj > 0 or obj_spaceShip.planetExtract){	
	x = (obj_cm_ship.x - (sprite_get_width(spr_cm_ship)/2))-
	(obj_spaceShip.nextObj/obj_spaceShip.initDist)*
	(sprite_get_width(spr_calamityDistMenu)/2);
}