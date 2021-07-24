function Create_Player() {
	var _character;
	//ARGUMENTS:
	//0: X
	//1: Y
	//2: Direction
	//3: ID
	//4: Allow Interaction
	//5: Cutscene Mode

	//mandatory arguments
	_character = instance_create_layer(argument[0],argument[1],"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,argument[2]);//set direction
	_character.character_ID = argument[3];//set ID
	_character.follower_chain = _character.character_ID;//set follower chain (for bypassing collision)
	_character.player_controlled = true;//set player controlled to true
	_character.allow_interaction = argument[4];//set interaction
	_character.can_trigger_room_transition = true;//allow character to trigger room transitions

	Set_Character_Stats(_character);//sets sprite, name, faction, etc. Based on ID

	//Optional arguments
	if(argument_count > 5){//Cutscene mode
	    _character.cutscene_mode = argument[5];//set cutscene mode
	}
	if(argument_count > 6){//Custom move script
	    _character.custom_move_script = argument[6];//set custom move script
	}
	global.Player = _character;//Set global variable to this character instance.

	return _character;



}
