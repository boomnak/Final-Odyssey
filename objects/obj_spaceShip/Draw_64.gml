draw_set_colour(c_yellow);

draw_text(display_get_gui_width()/1.15, 15, "Crew: "+string(totalCrew));

draw_text(0, 0, "Ship Speed: "+string(shipSpeed));
draw_text(0, 15, "Ship Parts: "+string(shipParts));

if (pauseGame){
	draw_text(display_get_gui_width()/2, 0, "Game Paused");
}else if (!planetExtract){
	draw_text(0, 30, "Next Object: "+string(nextObj)+" SD");
}

