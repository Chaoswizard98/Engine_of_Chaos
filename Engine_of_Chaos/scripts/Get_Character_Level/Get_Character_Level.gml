function Get_Character_Level(_lookup_type,_character,_formula){
	var _base;

	if(_lookup_type = "Global"){
	    _base = global.Level[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.level;
	}

	switch(_formula){
	    case "Total": return _base; break;//total level
	    case "Derived": return (_base - (global.Promotion_Level * Get_Character_Class_Tier(_lookup_type,_character,"Total"))); break;//derived level (promotion resets display to 1)
	    default: return _base; break;
	}
}