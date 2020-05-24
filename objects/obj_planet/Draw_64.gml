draw_set_colour(c_white);

if(obj_spaceShip.planetExtract and objCreated){ 

	if (!instance_exists(obj_shipUpgradeMenu) and !instance_exists(obj_optionsMenu)){
		draw_set_font(open_sans);
		
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y, "Planet Resources");
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+15, "Planet Fuel: "+string(planetFuel));
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+30, "Planet Food: "+string(planetFood));
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+45, "Planet Ship Parts: "+string(planetParts));
	}
	draw_set_font(open_sans_big);
	
	xval = obj_spaceShip.btnArr[0].x + (obj_spaceShip.btnArr[1].x - obj_spaceShip.btnArr[0].x)/2;
	
	draw_text(0, obj_spaceShip.btnArr[1].y, "Fuel");
	draw_text(xval, obj_spaceShip.btnArr[1].y, string(obj_spaceShip.extractFuel));
	
	xval = obj_spaceShip.btnArr[2].x + (obj_spaceShip.btnArr[3].x - obj_spaceShip.btnArr[2].x)/2;
	
	draw_text(0, obj_spaceShip.btnArr[3].y,"Food");
	draw_text(xval, obj_spaceShip.btnArr[3].y, string(obj_spaceShip.extractFood));
	
	xval = obj_spaceShip.btnArr[4].x + (obj_spaceShip.btnArr[5].x - obj_spaceShip.btnArr[4].x)/2;
	
	draw_text(0, obj_spaceShip.btnArr[5].y,"Parts");
	draw_text(xval, obj_spaceShip.btnArr[5].y, string(obj_spaceShip.extractShipParts));
	
}else if (init_scale != 0 and !selected and !instance_exists(obj_shipUpgradeMenu) and !instance_exists(obj_optionsMenu)){
	draw_set_font(open_sans);
	xval = x - (sprite_get_width(spr_planet)/2) * (init_scale/2);
	yval = y + (sprite_get_height(spr_planet)/2) * (init_scale/2);
	
	draw_text(xval, yval, string(obj_spaceShip.objDistance[i])+" SD");
}

