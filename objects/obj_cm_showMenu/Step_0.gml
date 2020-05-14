if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_cm_showMenu, false, false)){
	if (image_index == 1){
		image_index = 0;
		
		obj_calamityDistMenu.x = (sprite_get_width(spr_calamityDistMenu)/2);
		x = obj_calamityDistMenu.x+(sprite_get_width(spr_calamityDistMenu)/2)+
		(sprite_get_width(spr_cm_showMenu)/2);
		
		obj_cm_calamity.image_alpha = 1;
		obj_cm_planet.image_alpha = 1;
	}else{
		image_index = 1;
		obj_calamityDistMenu.x = 0 - (sprite_get_width(spr_calamityDistMenu)/2);
		x = (sprite_get_width(spr_cm_showMenu)/2);
		obj_cm_calamity.image_alpha = 0;
		obj_cm_planet.image_alpha = 0;
	}
}