draw_set_colour(c_yellow);

if(obj_spaceShip.planetExtract and objCreated){	
	if (!obj_spaceShip.pauseGame){
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y, "Asteroid Resources");
		draw_text(obj_msgBOX.x+5, obj_msgBOX.y+15, "Asteroid Fuel: "+string(asteroidFuel));
	}
	xval = obj_spaceShip.btnArr[0].x + (obj_spaceShip.btnArr[1].x - obj_spaceShip.btnArr[0].x)/2
	
	draw_text_transformed(0, obj_spaceShip.btnArr[1].y, "Fuel", 4, 4, 0);
	draw_text_transformed(xval, obj_spaceShip.btnArr[1].y, string(obj_spaceShip.extractFuel), 4, 4, 0);
	
}else if (init_scale != 0 and !selected){
	
	xval = x - (sprite_get_width(spr_asteroid)/2) * (init_scale/2);
	yval = y + (sprite_get_height(spr_asteroid)/2) * (init_scale/2);
	
	draw_text(xval, yval, string(obj_spaceShip.objDistance[i])+" SD");
}


