function Continue_Screen_Fade(_stop,_speed,_direction,_object){
	//For continuing an existing screen fade
	//Assign new variables.
	with(obj_Screen_Fade_Controller){
	    fade_stop = _stop;
	    fade_speed = _speed;
	    fade_direction = _direction;
	    current_object = _object;
	}
}