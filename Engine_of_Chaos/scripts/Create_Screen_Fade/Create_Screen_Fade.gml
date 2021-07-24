function Create_Screen_Fade() {
	//For creating a Screen fade object and starting to fade
	//Arguments:
	//Color, Alpha, Stop, Speed, Direction, Current Object

	var _color, _alpha, _stop, _speed, _direction, _object;

	_color = argument[0];
	_alpha = argument[1];
	_stop = argument[2];
	_speed = argument[3];
	_direction = argument[4];
	_object = argument[5];

	//Create the object and assign the variables.
	var _this = instance_create_layer(0,0,"Screen_Effect_Instance_Layer",obj_Screen_Fade_Controller);
	with(_this){
	    fade_color = _color;
	    fade_alpha = _alpha;
	    fade_stop = _stop;
	    fade_speed = _speed;
	    fade_direction = _direction;
	    current_object = _object;
	}

	if(argument_count > 6){
	    _this.depth = argument[6];
	}



}
