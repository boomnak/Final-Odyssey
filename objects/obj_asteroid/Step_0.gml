if (!obj_spaceShip.pauseGame){
	selected = true;
	
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2;
	
	if (obj_spaceShip.movObj){
		
		scale_top = (display_get_gui_width()/1.5) / sprite_get_width(spr_planet) - init_scale;
		
		image_xscale += scale_top / (obj_spaceShip.initDist / obj_spaceShip.curSpeed);
		image_yscale += scale_top / (obj_spaceShip.initDist / obj_spaceShip.curSpeed);
	
		obj_spaceShip.movObj = false;
	}else if (obj_spaceShip.planetExtract and !objCreated){
		scr_createRBox(0, display_get_gui_height()/5);
		objCreated = true;
		//obj_spaceShip.pauseGame = true;
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

