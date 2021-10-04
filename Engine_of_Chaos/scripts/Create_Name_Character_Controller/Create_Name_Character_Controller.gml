function Create_Name_Character_Controller(_object,_portrait,_default_name){
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Name_Character_Controller);

	with(_this){
	    current_object = _object;
	    portrait = _portrait;
	    default_name = _default_name;
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    portrait_controller = Create_Portrait_Controller(portrait,"Character_Creation",id);
	}
}