if (image_index == 1 and mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_optionsMenu, false, false)){
	image_index = 0;
	
	scr_activateObj();

	obj_om_controls.image_alpha = 1;
	obj_om_crew.image_alpha = 1;
	obj_om_quit.image_alpha = 1;
}else if (image_index == 2){
	if (keyboard_check_pressed(vk_anykey) and string_length(txt) < 2){
		txt += string(keyboard_string);
		keyboard_string = "";
	}
	
	if (keyboard_check_pressed(vk_backspace)){
		txt = string_delete(txt, string_length(txt), 1);
		keyboard_string = "";
	}else if (keyboard_check_pressed(vk_enter)){
		txt = string_digits(txt);
		if (txt == ""){
			txt = "0";
		}
		if (real(txt) < obj_spaceShip.totalCrew){
			obj_spaceShip.totalCrew -= real(txt);
		}
	}
}