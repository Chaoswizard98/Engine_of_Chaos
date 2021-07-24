function Set_NPC_Direction() {
	var _character = argument[0];//character
	var _direction = argument[1];//direction to face
	var _return = argument[2];//do they face the original direction after talking to them?

	Face_Direction(_character,_direction);
	_character.original_direction = _direction;
	_character.face_original_direction = _return;



}
