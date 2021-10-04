function Get_Direction(_x1,_y1,_x2,_y2) {
	//Figures out which direction to look given start and end location
	//Facing up / down takes precidence over left / right.

	var x_difference, y_difference, x_direction, y_direction;

	x_difference = _x1 - _x2;
	y_difference = _y1 - _y2;

	//Calculate X and Y direction
	//X Direction
	if(x_difference > 0){
	    x_direction = "Left"; //Left
	}
	else if(x_difference < 0){
	    x_direction = "Right"; //right
	}
	else{//Same x coordinate
	    x_direction = "Down"; //down
	}
	//Y Direction
	if(y_difference > 0){
	    y_direction = "Up"; //up
	}
	else if(y_difference < 0){
	    y_direction = "Down"; //down
	}
	else{//Same y coordinate
	    y_direction = "Down"; //down
	}

	if(abs(y_difference) >= abs(x_difference)){
	    return y_direction;
	}
	else{
	    return x_direction;
	}
}