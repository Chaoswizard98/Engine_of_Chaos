function Create_Follower(_x,_y,_direction,_character_ID,_target,_x_offset=0,_y_offset=0,_cutscene_mode = false) {
	var _character = instance_create_layer(_x,_y,"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,_direction);//set direction
	_character.character_ID = _character_ID;//set ID
	Follow_Character(_character,_target);
	Set_Character_Stats(_character);//set sprite, portrait, etc. based on ID

	_character.follower_x_offset = _x_offset;//set follower position (for army mode) (Normal, Left, Right)
	_character.follower_y_offset = _y_offset;//set follower position (for army mode) (Normal, Left, Right)
	_character.cutscene_mode = _cutscene_mode;//set cutscene mode
	
	return _character;
}