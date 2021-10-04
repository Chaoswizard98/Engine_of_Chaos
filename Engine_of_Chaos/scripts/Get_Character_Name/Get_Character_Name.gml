function Get_Character_Name(_lookup_type,_character,_formula){
	var _base = ""; 
	var _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Name[_character];
	}
	else if(_lookup_type = "Local"){
		if(_character != noone){
			_base = _character.name;
		}
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}