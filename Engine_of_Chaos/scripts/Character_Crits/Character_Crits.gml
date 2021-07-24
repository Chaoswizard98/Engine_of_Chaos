function Character_Crits() {
	var _character = argument[0];

	if(Get_Character_Crit("Local",_character,"Total")>random_range(0,100)){
	    return true;
	}

	return false;



}
