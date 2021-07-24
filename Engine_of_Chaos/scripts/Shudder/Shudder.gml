function Shudder() {
	//Have the character shudder
	var _character, _iterations;
	_character = argument[0];//character performing animation
	_iterations = 2;//number of times to run the loop default to 2

	if(argument_count > 1){//optionally set iterations
	    _iterations = argument[1];//number of times we run the animation
	}

	_character.number_of_animations = _iterations;//set number of times we run the animation
	_character.animation = "Shudder";//set animation to shudder
	_character.animation_direction = "down";
	_character.image_speed = 0;//freeze frame
	_character.animation_speed = 5;



}
