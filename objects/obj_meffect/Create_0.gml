depth = -1;

image_speed = 0;

if (instance_exists(obj_star)){
	image_index = 1;
}else{
	image_index = 0;
}

alarm[7] = 0.1 * room_speed;