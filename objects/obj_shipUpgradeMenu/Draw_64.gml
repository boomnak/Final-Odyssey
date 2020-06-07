draw_set_font(open_sans);
draw_set_colour(c_yellow);

xval = x - sprite_get_width(spr_um_FuelUpgrade)/2;
yval = y - sprite_get_width(spr_um_FuelUpgrade);

draw_text(xval, yval, "Fuel Tank: " + string(obj_spaceShip.fuelTank));
draw_text(xval, yval+15, "Food Storage: " + string(obj_spaceShip.foodBox));

tempfoodval = 50 + (50 * ((obj_spaceShip.foodBox - 100)/50));
tempfuelval = 50 + (50 * ((obj_spaceShip.fuelTank - 100)/50));
if (obj_spaceShip.shipParts >= tempfoodval and obj_spaceShip.shipParts >= tempfuelval){
	draw_text(xval, yval+35, "You have enough to \nupgrade both!");
}else if (obj_spaceShip.shipParts >= tempfuelval){
	draw_text(xval, yval+35, "You have enough to \nupgrade fuel!");
	draw_text(xval, yval+250, "You need "+string(tempfoodval - obj_spaceShip.shipParts)+ " more \nship parts to upgrade food");
}else if (obj_spaceShip.shipParts >= tempfoodval){
	draw_text(xval, yval+35, "You have enough to \nupgrade food!");
	draw_text(xval, yval+250, "You need "+string(tempfuelval - obj_spaceShip.shipParts)+ " more \nship parts to upgrade fuel");
}else{
	draw_text(xval, yval+35, "You need "+string(tempfuelval - obj_spaceShip.shipParts)+ " more \nship parts to upgrade fuel");
	draw_text(xval, yval+250, "You need "+string(tempfoodval - obj_spaceShip.shipParts)+ " more \nship parts to upgrade food");
}