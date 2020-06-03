if (!obj_spaceShip.pauseGame){		
	selected = true;
	
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2;
	
	if (obj_spaceShip.movObj){
		
		scale_top = (display_get_gui_width()/1.5) / sprite_get_width(spr_planet) - init_scale;
		
		image_xscale += scale_top / (obj_spaceShip.initDist / obj_spaceShip.curSpeed);
		image_yscale += scale_top / (obj_spaceShip.initDist / obj_spaceShip.curSpeed);
	
		obj_spaceShip.movObj = false;
	}else if (obj_spaceShip.planetExtract){
		
		if (!objCreated){
			scr_createRBox(0, display_get_gui_height()/5);
			objCreated = true;
		}else{
			if (irandom_range(1, 20) == 10){
				if (obj_spaceShip.extractFood > 0 or obj_spaceShip.extractFuel > 0 or obj_spaceShip.extractShipParts > 0){
					xval = x - (sprite_get_width(spr_star) /2);
					xval2 = x + (sprite_get_width(spr_star) /2);
				
					yval = y - (sprite_get_height(spr_star) /2);
					yval2 = y + (sprite_get_height(spr_star) /2);
					instance_create_layer(irandom_range(xval, xval2), irandom_range(yval, yval2), "instances", obj_meffect);
				}
			}
		}
	}
	
	if (obj_spaceShip.nextObj <= 0 and !obj_spaceShip.planetExtract){
		instance_destroy(id, true);
		obj_spaceShip.pauseGame = true;
	}
}else if (!selected){
	for (i=0;id != obj_spaceShip.objArr[i] and i <= 3;i++){}

	draw_text(x, y, string(obj_spaceShip.objDistance[i])+" SD");
	
	init_scale = 5/obj_spaceShip.objDistance[i];
	image_xscale = init_scale;
	image_yscale = init_scale;		
}	