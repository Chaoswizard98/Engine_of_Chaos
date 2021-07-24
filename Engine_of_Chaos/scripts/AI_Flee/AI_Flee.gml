function AI_Flee() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _speed = argument[2];
	var _search_range = argument[3];
	var _destination = noone;

	if(!_skip_action){
	    _destination = Get_Flee_Destination(_character,_speed,_search_range);
	    if(_destination != noone){
	        return AI_Move_To_Location(_skip_action,_character,_destination.x,_destination.y,_speed,_search_range);//<skip_action>, <character>, <x>, <y>, <speed>, <search_range>
	    }
	    return false;
	}
	return true;



}
