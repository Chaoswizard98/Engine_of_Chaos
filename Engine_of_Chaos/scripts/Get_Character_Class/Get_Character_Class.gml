function Get_Character_Class() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base = Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Class_Name","Base");
	var _abbreviation = Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Class_Abbreviation","Base");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Abbreviation": return _abbreviation; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}



}
