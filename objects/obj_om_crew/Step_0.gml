if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_om_crew, false, false)){
	image_alpha = 0;
	obj_om_controls.image_alpha = 0;
	obj_om_quit.image_alpha = 0;
	
	instance_deactivate_object(obj_om_controls);
	instance_deactivate_object(obj_om_crew);
	instance_deactivate_object(obj_om_quit);
	
	obj_optionsMenu.image_index = 2;
	
	instance_create_layer(obj_optionsMenu.x, obj_optionsMenu.y, "instances", obj_textBox);
}