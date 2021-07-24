function Character_Hit_Target() {
	var _attacker = argument[0];

	if(Get_Character_Accuracy("Local",_attacker,"Total")>random_range(0,100)){
	    return true;
	}

	return false;



}
