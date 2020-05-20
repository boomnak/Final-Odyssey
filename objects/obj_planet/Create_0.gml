randomize();

depth = 0;

image_speed = 0;
image_index = irandom_range(0, 5);

if (image_index == 4 or image_index == 5){
	planetFuel = irandom_range(25, 35);
	planetFood = irandom_range(25, 35);
	planetParts = irandom_range(15, 25);
}else{
	planetFuel = irandom_range(15, 25);
	planetFood = irandom_range(15, 25);
	planetParts = irandom_range(5, 15);
}

objCreated = false;
selected = false;

var scale_top;
init_scale = 0;
