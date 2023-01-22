function AI_Default_Physical_Wander(_character){
	var _skip_action = false;
	if(Get_Current_Region() < _character.ai_walk_region){//If player not beyond region
		_skip_action = AI_Wander(_skip_action,_character,6,2,2,"Origin");
		_skip_action = AI_Do_Nothing(_skip_action,_character);//<skip_action>, <character>
	}
	else{
		AI_Default_Physical(_character);
	}
}