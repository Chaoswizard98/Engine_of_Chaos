function Get_Character_Class_Tier(_lookup_type,_character,_formula){
	var _base = Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Class_Tier","Base");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}