function Character_Performs_Special_Attack() {
	var _character = argument[0];

	if(Get_Character_Special_Attack_Type("Local",_character,"Total") != "none"){//If we have a special attack
	    if(Get_Character_Special_Attack("Local",_character,"Total")>random_range(0,99)){//if it procs
	        return true;
	    }
	}

	return false;



}
