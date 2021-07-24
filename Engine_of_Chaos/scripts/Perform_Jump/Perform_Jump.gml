function Perform_Jump() {
	//Have the character shudder
	var _character, _iterations, _speed;
	_character = argument[0];//character performing animation
	_iterations = argument[1] - 1;//timer
	_speed = 2;//default speed of the animation

	if(argument_count >2){//jump speed is optional
	    _speed = argument[2];//jump speed
	}

	_character.number_of_animations = _iterations;//set timer
	_character.animation = "Jump";//set animation to jump
	_character.animation_speed = _speed;//set animation speed
	_character.animation_direction = "up";//set jump direction
	_character.image_speed = 0;//freeze frame





}
