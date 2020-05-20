depth = -99;

image_speed = 0;
image_index = 0;

txt = "";

xval = x - sprite_get_width(spr_optionsMenu)/2;
yval = y - sprite_get_height(spr_optionsMenu)/2;

instance_create_layer(xval, yval, "instances", obj_om_controls);
instance_create_layer(xval, yval+sprite_get_height(spr_om_controls), "instances", obj_om_crew);
instance_create_layer(xval, yval+sprite_get_height(spr_om_controls)*2, "instances", obj_om_quit);