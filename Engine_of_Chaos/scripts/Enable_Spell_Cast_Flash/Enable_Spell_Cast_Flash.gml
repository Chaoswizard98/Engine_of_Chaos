function Enable_Spell_Cast_Flash() {
	//Have the character shudder
	var _character, _flash_speed, _inColor, _outColor, _tolerance;
	_character = argument[0];//character performing animation

	_flash_speed = 3;
	_inColor = c_black;
	_outColor = c_white;
	_tolerance = 0;

	if(argument_count > 1){
	    _flash_speed = argument[1];
	}
	if(argument_count > 2){
	    _inColor = argument[2];
	}
	if(argument_count > 3){
	    _outColor = argument[3];
	}
	if(argument_count > 4){
	    _tolerance = argument[4];
	}

	//r,g,b,a [Color to replace]
	_character.shader_color_in[0] = colour_get_red(_inColor);//r
	_character.shader_color_in[1] = colour_get_green(_inColor);//g
	_character.shader_color_in[2] = colour_get_blue(_inColor);//b
	_character.shader_color_in[3] = 1;//a
	//r,g,b,a [New Color]
	_character.shader_color_out[0] = colour_get_red(_outColor);//r
	_character.shader_color_out[1] = colour_get_green(_outColor);//g
	_character.shader_color_out[2] = colour_get_blue(_outColor);//b
	_character.shader_color_out[3] = 1;//a
	//r,g,b,a [Tolerance]
	_character.shader_tolerance[0] = _tolerance;//r
	_character.shader_tolerance[1] = _tolerance;//g
	_character.shader_tolerance[2] = _tolerance;//b
	_character.shader_tolerance[3] = 0;//a


	_character.spell_cast = true;
	_character.flash_speed = _flash_speed;
	_character.shader_type = "sh_Spell_Cast_Flash";//shader to use



}
