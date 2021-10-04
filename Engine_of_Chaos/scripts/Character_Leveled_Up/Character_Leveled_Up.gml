function Character_Leveled_Up(_lookup_type,_character){
	if(Get_Character_Experience(_lookup_type,_character,"Total") >= global.Xp_Per_Level){
	    return true;
	}
	return false;
}