draw_set_colour(c_yellow);

if(obj_spaceShip.planetExtract and objCreated){ 
	if (!obj_spaceShip.pauseGame){
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y, "Planet Resources");
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+15, "Planet Fuel: "+string(planetFuel));
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+30, "Planet Food: "+string(planetFood));
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+45, "Planet Ship Parts: "+string(planetParts));
	}
	xval = obj_spaceShip.btnArr[0].x + (obj_spaceShip.btnArr[1].x - obj_spaceShip.btnArr[0].x)/2;
	
	draw_text_transformed(0, obj_spaceShip.btnArr[1].y, "Fuel", 4, 4, 0);
	draw_text_transformed(xval, obj_spaceShip.btnArr[1].y, string(obj_spaceShip.extractFuel), 4, 4, 0);
	
	xval = obj_spaceShip.btnArr[2].x + (obj_spaceShip.btnArr[3].x - obj_spaceShip.btnArr[2].x)/2;
	
	draw_text_transformed(0, obj_spaceShip.btnArr[3].y,"Food", 4, 4, 0);
	draw_text_transformed(xval, obj_spaceShip.btnArr[3].y, string(obj_spaceShip.extractFood), 4, 4, 0);
	
	xval = obj_spaceShip.btnArr[4].x + (obj_spaceShip.btnArr[5].x - obj_spaceShip.btnArr[4].x)/2;
	
	draw_text_transformed(0, obj_spaceShip.btnArr[5].y,"Parts", 4, 4, 0);
	draw_text_transformed(xval, obj_spaceShip.btnArr[5].y, string(obj_spaceShip.extractShipParts), 4, 4, 0);
	
}else if (init_scale != 0 and !selected){
	xval = x - (sprite_get_width(spr_planet)/2) * (init_scale/2);
	yval = y + (sprite_get_height(spr_planet)/2) * (init_scale/2);
	
	draw_text(xval, yval, string(obj_spaceShip.objDistance[i])+" SD");
}

