function Battle_Flag_Was_Set(_flag,_result = "") {
	if(_result != ""){//if we're testing for a specific result
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