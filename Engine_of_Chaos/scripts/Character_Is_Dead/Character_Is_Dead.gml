function Character_Is_Dead() {
	var _lookup_type = argument[0];
	var _character = argument[1];

	/*if(_lookup_type = 'Local'){//In case we just set a flag for summoned units
	    if(_character.death_flag){
	        return true;
	    }
	}*/

	if(Get_Character_Health(_lookup_type,_character,"Total") <= 0){
	    return true;
	}

	return false;



}
