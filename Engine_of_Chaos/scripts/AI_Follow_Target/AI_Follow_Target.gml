function AI_Follow_Target(_skip_action,_character,_target,_speed,_search_range) {
	if(!_skip_action){
	    if(_target != noone){
	        return AI_Move_To_Location(_skip_action,_character,_target.x,_target.y,_speed,_search_range);
	    }
	    return false;
	}
	return true;
}