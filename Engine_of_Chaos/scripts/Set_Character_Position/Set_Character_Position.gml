function Set_Character_Position(_character,_x,_y,_direction){
	_character.x = _x;
	_character.y = _y;
	Face_Direction(_character,_direction);

	_character.projected_x = _character.x;
	_character.projected_y = _character.y;
}