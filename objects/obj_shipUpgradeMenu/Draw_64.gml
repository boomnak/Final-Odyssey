draw_set_font(open_sans);
draw_set_colour(c_yellow);

xval = x - sprite_get_width(spr_um_FuelUpgrade)/2;
yval = y - sprite_get_width(spr_um_FuelUpgrade);

draw_text(xval, yval, "Fuel Tank: " + string(obj_spaceShip.fuelTank));
draw_text(xval, yval+15, "Food Storage: " + string(obj_spaceShip.foodBox));

if (obj_spaceShip.shipParts >= 50){
	draw_text(xval, yval+35, "You have enough to \nupgrade!");
}else{
	draw_text(xval, yval+35, "You need "+string(50 - obj_spaceShip.shipParts)+ " more \nship parts to upgrade...");
}