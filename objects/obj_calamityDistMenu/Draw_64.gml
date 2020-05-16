draw_set_colour(c_red);
xval = x - sprite_get_width(spr_calamityDistMenu)/2;
yval = y - sprite_get_height(spr_calamityDistMenu)/2 + 5;
draw_text(xval, yval, "Calamity Distance: "+string(obj_spaceShip.calamityDistance));