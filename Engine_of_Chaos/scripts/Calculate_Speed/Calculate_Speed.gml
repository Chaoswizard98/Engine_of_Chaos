function Calculate_Speed_X(_x,_y,_end_x,_end_y,_speed){
	var _steps = ceil(max(abs(_x-_end_x),abs(_y-_end_y))/_speed);
	var _new_speed = 0;
	if(_steps = 0){
	    _new_speed = _speed;
	}
	else{
	    _new_speed = abs(_x-_end_x)/_steps;
	}
	return _new_speed;
}

function Calculate_Speed_Y(_x,_y,_end_x,_end_y,_speed){
	var _steps = ceil(max(abs(_x-_end_x),abs(_y-_end_y))/_speed);
	var _new_speed = 0;
	if(_steps = 0){
	    _new_speed = _speed;
	}
	else{
	    _new_speed = abs(_y-_end_y)/_steps;
	}
	return _new_speed;
}

function Calculate_Speed_Rotation(_x,_y,_end_x,_end_y,_speed, _rotation, _end_rotation){
	var _steps = ceil(max(abs(_x-_end_x),abs(_y-_end_y))/_speed);
	var _new_speed = 0;
	if(_steps = 0){
	    _new_speed = _speed;
	}
	else{
	    _new_speed = abs(_rotation-_end_rotation)/_steps;
	}
	return _new_speed;
}