draw_text(0, 0, "Crew Hunger: "+string(crewHunger));
draw_text(0, 15, "Food: "+string(foodStorage));
draw_text(0, 30, "Calamity Distance: "+string(calamityDistance));
draw_text(0, 45, "Ship Fuel: "+string(shipFuel));
draw_text(0, 60, "Ship Speed: "+string(shipSpeed));
draw_text(0, 75, "Crew: "+string(totalCrew));
draw_text(0, 90, "Ship Parts: "+string(shipParts));

if (pauseGame){
	draw_text(display_get_gui_width()/2, 0, "Game Paused");
}else if (!planetExtract){
	draw_text(0, 105, "Next Object: "+string(nextObj)+" SD");
}

if (shipFuel <= 0){
	draw_text(0, 120, "NOT ENOUGH FUEL...");
}
