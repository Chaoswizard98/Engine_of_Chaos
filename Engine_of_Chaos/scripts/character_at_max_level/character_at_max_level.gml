function Character_At_Max_Level(_lookup_type,_character){
	if(Get_Character_Level(_lookup_type,_character,"Total") >= Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Max_Level","Base",1)){
		return true;
	}
	return false;
}