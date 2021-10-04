function Set_NPC_Direction(_character,_direction,_return){
	Face_Direction(_character,_direction);
	_character.original_direction = _direction;
	_character.face_original_direction = _return;
}