function Get_Character_Level_Scheme_Stats() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _stat = argument[2];
	var _sub_stat = argument[3];

	return Get_Level_Scheme_Stats(_lookup_type,_character,Get_Character_Level_Scheme(_lookup_type,_character,"Total"),_stat,_sub_stat);



}
