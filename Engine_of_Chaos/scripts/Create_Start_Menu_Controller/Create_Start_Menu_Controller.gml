function Create_Start_Menu_Controller() {
	var _current_object = argument[0];

	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Start_Menu_Controller);

	with(_this){
	    current_object = _current_object;
	    window_pan_direction = "in";
	    window_pan = -max_pan;
	    play_pan_sound = true;
	}

	return _this;



}
