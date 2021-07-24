function Battle_Flag_Was_Set() {
	var _flag = argument[0];
	var _result = "";

	if(argument_count > 1){//if we're testing for a specific result
	    _result = argument[1];
	    if(battle_flags[_flag] = _result){//return true if flag = result
	        return true;
	    }
	}
	else{//Not testing for a specific result
	    if(battle_flags[_flag] != ""){//return true if flag isnt blank
	        return true;
	    }
	}

	return false;



}
