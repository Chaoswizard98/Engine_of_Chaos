function Get_Character_Class(_lookup_type,_character,_formula){
	var _base = Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Class_Name","Base",1);
	var _abbreviation = Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Class_Abbreviation","Base",1);

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Abbreviation": return _abbreviation; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}