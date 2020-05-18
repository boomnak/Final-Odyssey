randomize();

depth = -2;

select = irandom_range(0, 1);
added = false;

if (select == 0){
	parts = irandom_range(10, 15);
}else if (select == 1){
	fuel = irandom_range(10, 15);
}


image_xscale = 4;
image_yscale = 4;

image_speed = 0.5;

alarm[5] = 3 * room_speed;
