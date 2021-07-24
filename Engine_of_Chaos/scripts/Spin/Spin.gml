function Spin() {
	//Have the character shudder
	var _character, _iterations, _spin_direction, _end_direction, _animation_speed;
	_character = argument[0];//character performing animation
	_iterations = 2;//number of times to run the loop default to 2
	_spin_direction = "Clockwise";//default to clockwise rotation
	_end_direction = _character.direction;//default to start direction
	_animation_speed = 2;//delay between animation updates

	if(argument_count > 1){//optionally set iterations
	    _iterations = argument[1] - 1;//number of times we run the animation
	}
	if(argument_count > 2){//optionally set animation speed
	    _animation_speed = argument[2];//delay between animation updates
	}
	if(argument_count > 3){//optionally set spin end direction
	    _end_direction = argument[3];//end facing this direction
	}
	if(argument_count > 4){//optionally set spin direction
	    _spin_direction = argument[4];//spin in this direction
	}


	_character.number_of_animations = _iterations;//set number of times we run the animation
	_character.animation = "Spin";//set animation to spin
	_character.animation_speed = _animation_speed;//speed of animation
	_character.end_direction = _end_direction;//end facing this direction
	_character.spin_direction = _spin_direction;//clockwise or counter clockwise
	_character.image_speed = 0;//freeze frame



}
