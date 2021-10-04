function Get_Character_Health(_lookup_type,_character,_formula){
	var _base;

	if(_lookup_type = "Global"){
	    _base = global.Current_Health[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.current_health;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return _base; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}