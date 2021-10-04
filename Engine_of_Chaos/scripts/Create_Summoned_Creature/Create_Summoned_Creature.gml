function Create_Summoned_Creature(_x,_y,_character_ID,_summoner){
	var _character = instance_create_layer(_x,_y,"Character_Instance_Layer",obj_Character);//create character
	Face_Direction(_character,"Down");//set direction
	_character.character_ID = _character_ID;//set ID
	_character.follower_chain = _character.character_ID;//set follower chain (for bypassing collision)
	_character.summoner = _summoner;
	_character.master_summoner = _character.summoner.master_summoner;
	_character.is_summon = true;
	Set_Character_Stats(_character);//sets sprite, name, faction, etc. Based on ID

	return _character;
}