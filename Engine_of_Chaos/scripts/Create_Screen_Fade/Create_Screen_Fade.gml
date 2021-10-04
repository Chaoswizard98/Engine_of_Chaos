function Create_Screen_Fade(_color,_alpha,_stop,_speed,_direction,_object,_depth = layer_get_depth("Screen_Effect_Instance_Layer")){
	//For creating a Screen fade object and starting to fade
	//Create the object and assign the variables.
	var _this = instance_create_layer(0,0,"Screen_Effect_Instance_Layer",obj_Screen_Fade_Controller);
	with(_this){
	    fade_color = _color;
	    fade_alpha = _alpha;
	    fade_stop = _stop;
	    fade_speed = _speed;
	    fade_direction = _direction;
	    current_object = _object;
		if(depth != _depth){
			depth = _depth;
		}
	}
}