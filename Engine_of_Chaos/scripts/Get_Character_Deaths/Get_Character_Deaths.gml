function Get_Character_Deaths() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base;

	if(_lookup_type = "Global"){
	    _base = global.Deaths[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.deaths;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return _base; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}



}
