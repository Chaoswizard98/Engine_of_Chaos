function AI_Follow_Target() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _target = argument[2];
	var _speed = argument[3];
	var _search_range = argument[4];

	if(!_skip_action){
	    if(_target != noone){
	        return AI_Move_To_Location(_skip_action,_character,_target.x,_target.y,_speed,_search_range);
	    }
	    return false;
	}
	return true;



}
