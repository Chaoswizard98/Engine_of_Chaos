function Nod_Head() {
	//Have the character shudder
	var _character, _iterations, _animation_speed;
	_character = argument[0];//character performing animation
	_iterations = 0;//number of times to run the loop default to 2
	_animation_speed = 25;//default animation speed

	if(argument_count > 1){//optionally set iterations
	    _iterations = argument[1]-1;//number of times we run the animation
	}
	if(argument_count > 2){
	    _animation_speed = argument[2];
	}

	_character.number_of_animations = _iterations;//set number of times we run the animation
	_character.animation = "Nod_Head";//set animation to shudder
	_character.image_speed = 0;//freeze frame
	_character.animation_speed = _animation_speed;
	_character.animation_direction = "down";



}
