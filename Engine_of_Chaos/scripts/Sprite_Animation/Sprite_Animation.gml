function Sprite_Animation() {
	//Have the character shudder
	var _character, _iterations, _animation_sprite, _animation_speed, _hide_character, _freeze_last_frame;
	_character = argument[0];//character performing animation
	_animation_sprite = argument[1];//sprite to draw

	//defaults
	_iterations = 0;//number of iterations
	_animation_speed = .0625;//speed of animation
	_hide_character = true;//hide character by default
	_freeze_last_frame = false;//do we persist the animation to the cutscene controller?

	if(argument_count > 2){//optionally set iterations
	    _iterations = argument[2] - 1;//number of times we run the animation
	}
	if(argument_count > 3){//optionally set iterations
	    _animation_speed = argument[3];//number of times we run the animation
	}
	if(argument_count > 4){//optionally set iterations
	    _hide_character = argument[4];//number of times we run the animation
	}
	if(argument_count > 5){//optionally set iterations
	    _freeze_last_frame = argument[5];//number of times we run the animation
	}


	_character.animation_speed = _animation_speed;//set draw speed
	_character.animation = "Sprite_Animation";//set sprite animation
	_character.number_of_animations = _iterations;//number of iterations
	_character.animation_frame = 0;//reset frame to 0
	_character.animation_sprite = _animation_sprite;//set sprite to draw
	_character.hide_character = _hide_character;//do we show or hide the character
	_character.freeze_last_frame = _freeze_last_frame;
	_character.image_speed = 0;//freeze frame



}
