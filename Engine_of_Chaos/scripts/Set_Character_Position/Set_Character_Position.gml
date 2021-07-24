function Set_Character_Position() {
	//sets the position of the character
	var _character = argument[0];
	_character.x = argument[1];
	_character.y = argument[2];
	Face_Direction(_character,argument[3]);

	_character.projected_x = _character.x;
	_character.projected_y = _character.y;



}
