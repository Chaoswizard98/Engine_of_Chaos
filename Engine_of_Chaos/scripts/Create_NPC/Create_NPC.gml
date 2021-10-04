function Create_NPC(_x,_y,_direction,_character_ID,_cutscene_mode = false){
	var _character = instance_create_layer(_x,_y,"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,_direction);//set direction
	_character.character_ID = _character_ID;//set ID
	_character.follower_chain = _character.character_ID;//set follower chain (for bypassing collision)
	Set_Character_Stats(_character);//sets sprite, name, faction, etc. Based on ID
	_character.cutscene_mode = _cutscene_mode;//set cutscene mode

	return _character;
}