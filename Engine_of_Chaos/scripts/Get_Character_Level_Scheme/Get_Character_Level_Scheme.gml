function Get_Character_Level_Scheme(_lookup_type,_character,_formula){
	var _base;
	if(_lookup_type = "Global"){
	    _base = global.Level_Scheme[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.level_scheme;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}