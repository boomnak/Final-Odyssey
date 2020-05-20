randomize();

depth = 0;

objCreated = false;
selected = false;

image_speed = 0;
image_index = irandom_range(0, 9);

if (image_index == 9){
	asteroidFuel = 30;
	asteroidParts = 20;
}else{
	asteroidFuel = irandom_range(5, 25);
	asteroidParts = irandom_range(5, 8);
}

var scale_top;
init_scale = 0;