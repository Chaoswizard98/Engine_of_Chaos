function Get_Character_Level_Scheme_Stats(_lookup_type,_character,_stat,_sub_stat,_character_level) {
	return Get_Level_Scheme_Stats(_lookup_type,_character,Get_Character_Level_Scheme(_lookup_type,_character,"Total"),_stat,_sub_stat,_character_level);
}