function Get_Character_Name() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

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