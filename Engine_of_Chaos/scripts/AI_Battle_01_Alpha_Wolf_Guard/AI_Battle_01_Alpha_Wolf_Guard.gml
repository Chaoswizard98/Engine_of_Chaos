function AI_Battle_01_Alpha_Wolf_Guard(_character){
	var _skip_action = false;

	_skip_action = AI_Attack_Target(_skip_action,_character,"Default",99,-99);//<skip_action>, <character>, <formula>, <speed>, <min_threat>
	_skip_action = AI_Move_Towards_Closest_Target(_skip_action,_character,"Enemy",99,60);//<skip_action>, <character>, <formula>, <speed>, <search_range>
	_skip_action = AI_Do_Nothing(_skip_action,_character);//<skip_action>, <character>
}