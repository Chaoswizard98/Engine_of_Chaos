function Continue_Screen_Fade(argument0, argument1, argument2, argument3) {
	//For continuing an existing screen fade
	//Arguments:
	//Color, Alpha, Stop, Speed, Direction, Current Object

	var _stop, _speed, _direction, _object;

	_stop = argument0;
	_speed = argument1;
	_direction = argument2;
	_object = argument3;

	//Assign new variables.
	with(obj_Screen_Fade_Controller){
	    fade_stop = _stop;
	    fade_speed = _speed;
	    fade_direction = _direction;
	    current_object = _object;
	}



}
