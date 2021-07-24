function Disable_Spell_Cast_Flash() {
	//Have the character shudder
	var _character;
	_character = argument[0];//character performing animation

	_character.spell_cast = false;
	_character.flash_speed = 0;

	_character.use_shader = false;//are we using a shader?
	_character.shader_type = "none";//shader to use
	//r,g,b,a [Color to replace]
	_character.shader_color_in[0] = 0;//r
	_character.shader_color_in[1] = 0;//g
	_character.shader_color_in[2] = 0;//b
	_character.shader_color_in[3] = 1;//a
	//r,g,b,a [New Color]
	_character.shader_color_out[0] = 0;//r
	_character.shader_color_out[1] = 0;//g
	_character.shader_color_out[2] = 0;//b
	_character.shader_color_out[3] = 0;//a
	//r,g,b,a [Tolerance]
	_character.shader_tolerance[0] = 0;//r
	_character.shader_tolerance[1] = 0;//g
	_character.shader_tolerance[2] = 0;//b
	_character.shader_tolerance[3] = 0;//a



}
