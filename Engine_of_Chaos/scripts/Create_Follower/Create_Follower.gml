function Create_Follower() {
	var _character;
	//ARGUMENTS:
	//0: X
	//1: Y
	//2: Direction
	//3: ID
	//4: Object Following
	//5: X Offset
	//6: Y Offset

	//mandatory arguments
	_character = instance_create_layer(argument[0],argument[1],"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,argument[2]);//set direction
	_character.character_ID = argument[3];//set ID
	Follow_Character(_character,argument[4]);

	Set_Character_Stats(_character);//set sprite, portrait, etc. based on ID

	//Optional arguments
	if(argument_count > 5){//cutscene mode
	    _character.follower_x_offset = argument[5];//set follower position (for army mode) (Normal, Left, Right)
	}
	//Optional arguments
	if(argument_count > 6){//cutscene mode
	    _character.follower_y_offset = argument[6];//set follower position (for army mode) (Normal, Left, Right)
	}
	if(argument_count > 7){//cutscene mode
	    _character.cutscene_mode = argument[7];//set cutscene mode
	}

	return _character;



}
