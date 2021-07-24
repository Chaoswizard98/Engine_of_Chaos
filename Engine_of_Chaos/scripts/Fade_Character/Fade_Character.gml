function Fade_Character() {
	//Have the character shudder
	var _character, _animation_speed, _end_alpha, _alpha;
	_character = argument[0];//character performing animation

	//defaults
	_animation_speed = .0625;//speed of animation
	_end_alpha = 1;//end alpha
	_alpha = _character.alpha;//starting alpha defaults to current alpha

	if(argument_count > 1){//optionally set animation speed
	    _animation_speed = argument[1];//speed of animation
	}
	if(argument_count > 2){//optionally set end alpha
	    _end_alpha = argument[2];//end alpha
	}
	if(argument_count > 3){
	    _alpha = argument[3];//set starting alpha
	}

	_character.number_of_animations = 1;
	_character.alpha = _alpha;//set initial alpha
	_character.animation_speed = _animation_speed;//set draw speed
	_character.end_alpha = _end_alpha;//set draw speed
	_character.animation = "Fade_Character";//set sprite animation



}
