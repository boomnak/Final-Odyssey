draw_set_font(open_sans);
draw_set_colour(c_white);

if (image_index == 2){
	xval = x-sprite_get_width(spr_textBox)/2;
	yval = y-sprite_get_height(spr_textBox);
	
	draw_text(xval, yval-45, string("Your total crew: "+string(obj_spaceShip.totalCrew)));
	draw_text(xval, yval-15, "input the number of \ncrew you want to kick out");
	
	xval = x-sprite_get_width(spr_textBox)/2;
	yval = obj_textBox.y - sprite_get_height(spr_textBox)/2;
	
	draw_text_transformed(xval, yval, txt, 3, 3, 0);
}