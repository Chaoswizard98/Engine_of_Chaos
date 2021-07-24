function Shake_Head() {
	//Have the character shudder
	var _character, _iterations, _speed;
	_character = argument[0];//character performing animation
	_iterations = 25;//number of animations
	_speed = 2;//speed of head shake

	if(argument_count > 1){//optionally set timer
	    _iterations = argument[1];//timer
	}
	if(argument_count > 2){
	    _speed = argument[2];//animation speed
	}

	_character.number_of_animations = _iterations;//set timer
	_character.animation = "Shake_Head";//set animation to shudder
	_character.animation_direction = "left";//start head shake in left direction
	_character.image_speed = 0;//freeze frame
	_character.animation_speed = _speed;//animation speed



}
