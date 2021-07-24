function Character_Blocked_Attack() {
	var _target = argument[0];

	if(Get_Character_Evasion("Local",_target,"Total")>random_range(0,100)){
	    return true;
	}

	return false;



}
