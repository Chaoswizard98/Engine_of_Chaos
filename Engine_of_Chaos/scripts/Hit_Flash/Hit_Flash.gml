function Hit_Flash() {
	//Have the character shudder
	var _character, _flash_speed, _flash_color, _flash_alpha;
	_character = argument[0];//character performing animation

	//defaults
	_flash_speed = .0625;//speed of animation
	_flash_color = c_white;
	_flash_alpha = 1;

	if(argument_count > 1){//optionally set animation speed
	    _flash_speed = argument[1];//speed of animation
	}
	if(argument_count > 2){//optionally set flash color
	    _flash_color = argument[2];//flash color
	}
	if(argument_count > 3){//optionally set flash alpha
	    _flash_alpha = argument[3];//flash alpha
	}

	_character.hit_flash = true;
	_character.flash_alpha = _flash_alpha;
	_character.hit_flash_speed = _flash_speed;
	_character.hit_flash_color = _flash_color;



}
