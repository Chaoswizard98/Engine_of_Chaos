function Create_Summoned_Creature() {
	var _character;
	//ARGUMENTS:
	//0: X
	//1: Y
	//2: ID
	//3: Summoner

	//mandatory arguments
	_character = instance_create_layer(argument[0],argument[1],"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,"Down");//set direction
	_character.character_ID = argument[2];//set ID
	_character.follower_chain = _character.character_ID;//set follower chain (for bypassing collision)
	_character.summoner = argument[3];
	_character.master_summoner = _character.summoner.master_summoner;
	_character.is_summon = true;
	Set_Character_Stats(_character);//sets sprite, name, faction, etc. Based on ID

	return _character;



}
