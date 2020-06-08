ini_open("save.ini");
stars = 0;
stars = ini_read_real("save", "stars", 0);

for (i = 0;i < stars;i++){
	instance_create_layer(i * 64, y, "instances", obj_trophy);
}

ini_close();