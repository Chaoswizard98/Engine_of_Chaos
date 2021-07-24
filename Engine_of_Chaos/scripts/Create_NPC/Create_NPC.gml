function Create_NPC() {
	var _character;
	//ARGUMENTS:
	//0: X
	//1: Y
	//2: Direction
	//3: ID
	//4: Cutscene Mode

	//mandatory arguments
	_character = instance_create_layer(argument[0],argument[1],"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,argument[2]);//set direction
	_character.character_ID = argument[3];//set ID
	_character.follower_chain = _character.character_ID;//set follower chain (for bypassing collision)

	Set_Character_Stats(_character);//sets sprite, name, faction, etc. Based on ID

	//Optional arguments
	if(argument_count > 4){//Cutscene mode
	    _character.cutscene_mode = argument[4];//set cutscene mode
	}

	return _character;



}
