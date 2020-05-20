depth = -99;

image_speed = 0;
image_index = 0;

xval = x;
yval = y;

instance_create_layer(xval, yval, "instances", obj_um_FuelUpgrade);

yval = obj_um_FuelUpgrade.y + sprite_get_height(spr_um_FuelUpgrade);
instance_create_layer(xval, yval, "instances", obj_um_FoodUpgrade);