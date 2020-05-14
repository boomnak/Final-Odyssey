xvar = (100 - obj_spaceShip.calamityDistance)/100;

x = ((obj_spaceShip.calamityDistance / 100) * sprite_get_width(spr_calamityDistMenu))+
((obj_cm_ship.x + (sprite_get_width(spr_cm_ship)/2)-(sprite_get_width(spr_cm_calamity)/2))*xvar);

if (x > (obj_calamityDistMenu.x + (sprite_get_width(spr_calamityDistMenu)/2))){
	image_alpha = 0;
}else{
	image_alpha = 1;
}