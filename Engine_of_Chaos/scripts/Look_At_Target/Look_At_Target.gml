function Look_At_Target() {
	//Makes object A look at object B
	//Facing up / down takes precidence over left / right.

	var _character, _target, x_difference, y_difference, x_direction, y_direction;
	_character = argument[0];
	_target = argument[1];

	x_difference = _character.x - _target.x;
	y_difference = _character.y - _target.y;

	//Calculate X and Y direction
	//X Direction
	if(x_difference > 0){
	    x_direction = 180; //Left
	}
	else if(x_difference < 0){
	    x_direction = 0; //right
	}
	else{//Same x coordinate
	    x_direction = 270; //down
	}
	//Y Direction
	if(y_difference > 0){
	    y_direction = 90; //up
	}
	else if(y_difference < 0){
	    y_direction = 270; //down
	}
	else{//Same y coordinate
	    y_direction = 270; //down
	}

	if(abs(y_difference) >= abs(x_difference)){
	    _character.direction = y_direction;
	}
	else{
	    _character.direction = x_direction;
	}



}
