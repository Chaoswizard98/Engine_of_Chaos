function AI_Move_Towards_Closest_Target(_skip_action,_character,_formula,_speed,_search_range){
	if(!_skip_action){
	    return AI_Follow_Target(_skip_action,_character,Get_Closest_Character(_character,_formula,_search_range),_speed,_search_range);
	}
	return true;
}