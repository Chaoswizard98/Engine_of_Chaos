function Character_Leveled_Up() {
	var _lookup_type = argument[0];
	var _character = argument[1];

	if(Get_Character_Experience(_lookup_type,_character,"Total") >= global.Xp_Per_Level){
	    return true;
	}

	return false;



}
