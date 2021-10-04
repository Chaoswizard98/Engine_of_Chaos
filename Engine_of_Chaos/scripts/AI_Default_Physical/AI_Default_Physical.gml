function AI_Default_Physical(_character){
	var _skip_action = false;
	var _speed = 0;

	//Get max walk distance based on region (where the player is on the map)
	if(Get_Current_Region() >= _character.ai_sprint_region){ _speed = 99; }//If AI should sprint, use sprint speed
	else if(Get_Current_Region() >= _character.ai_walk_region){ _speed = 2; }//If AI should walk, use walk speed

	//attack a target (if one is in range), walk towards the nearest target (if one is nearby), or stay put
	_skip_action = AI_Attack_Target(_skip_action,_character,"Default",99,-99);//<skip_action>, <character>, <formula>, <speed>, <min_threat>
	_skip_action = AI_Move_Towards_Nearest_Target(_skip_action,_character,"Enemy",_speed,60);//<skip_action>, <character>, <formula>, <speed>, <search_range>
	_skip_action = AI_Do_Nothing(_skip_action,_character);//<skip_action>, <character>
}