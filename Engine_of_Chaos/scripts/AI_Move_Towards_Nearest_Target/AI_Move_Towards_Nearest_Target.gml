function AI_Move_Towards_Nearest_Target() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _speed = argument[3];
	var _search_range = argument[4];

	if(!_skip_action){
	    return AI_Follow_Target(_skip_action,_character,Get_Nearest_Character(_character,_formula,_search_range),_speed,_search_range);
	}
	return true;



}
