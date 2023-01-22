function Get_Character_Level(_lookup_type,_character,_formula){
	var _base;

	if(_lookup_type = "Global"){
	    _base = global.Level[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.level;
	}

	switch(_formula){
	    case "Total": return (_base + Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Level_Offset","Base",1)); break;//total level
	    case "Derived": return _base; break;//derived level (promotion resets display to 1)
	    default: return _base; break;
	}
}