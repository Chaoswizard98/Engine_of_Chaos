function Create_Player(_x,_y,_direction,_character_ID,_allow_interaction,_cutscene_mode=false,_move_script = "none"){
	var _character = instance_create_layer(_x,_y,"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,_direction);//set direction
	_character.character_ID = _character_ID;//set ID
	_character.follower_chain = _character.character_ID;//set follower chain (for bypassing collision)
	_character.player_controlled = true;//set player controlled to true
	_character.allow_interaction = _allow_interaction;//set interaction
	_character.can_trigger_room_transition = true;//allow character to trigger room transitions

	Set_Character_Stats(_character);//sets sprite, name, faction, etc. Based on ID

	_character.cutscene_mode = _cutscene_mode;//set cutscene mode
	_character.custom_move_script = _move_script;//set custom move script
	
	global.Player = _character;//Set global variable to this character instance.

	return _character;
}