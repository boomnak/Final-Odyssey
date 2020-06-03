draw_set_font(open_sans);
draw_set_colour(c_yellow);

if (select == 0){
	draw_text(obj_msgBOX.x+5, obj_msgBOX.y+60, "you discovered a ship parts mine\n +"+string(parts)+" ship parts!");	
}else if (select == 1){
	draw_text(obj_msgBOX.x+5, obj_msgBOX.y+60, "you discovered a fuel mine\n +"+string(fuel)+" ship fuel!");	
}