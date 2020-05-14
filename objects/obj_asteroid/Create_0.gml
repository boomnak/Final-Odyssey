randomize();

depth = 0;

asteroidFuel = irandom_range(5, 25);

objCreated = false;
selected = false;

image_speed = 0;
image_index = irandom_range(0, 9);

if (image_index == 9){
	asteroid_Fuel = 50;
}
var scale_top;
init_scale = 0;