draw_set_colour(c_yellow);
draw_text(x, y-sprite_get_height(spr_shipUpgradeMenu)/2, "Fuel Tank: " + string(obj_spaceShip.fuelTank));
draw_text(x, y-(sprite_get_height(spr_shipUpgradeMenu)/2)+15, "Food Storage: " + string(obj_spaceShip.foodBox));