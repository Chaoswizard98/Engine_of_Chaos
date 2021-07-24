function Get_Character_Level_Scheme() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _tier;

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
