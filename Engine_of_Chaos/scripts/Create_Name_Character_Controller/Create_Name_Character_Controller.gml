function Create_Name_Character_Controller() {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Name_Character_Controller);

	with(_this){
	    current_object = argument[0];
	    portrait_id = argument[1];
	    default_name = argument[2];
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    portrait_controller = Create_Portrait_Controller(portrait_id,"Character_Creation",id);
	}



}
