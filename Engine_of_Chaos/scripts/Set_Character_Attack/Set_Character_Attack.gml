function Set_Character_Attack(_lookup_type,_character,_formula,_ammount) {
	var _base;

	//Get Base Stat
	if(_lookup_type = "Global"){
	    _base = global.Attack[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.attack;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Set": _base = _ammount; break;
	    case "Add": _base += _ammount; break;
	    case "Remove": _base -= _ammount; break;
	    default: _base = _ammount; break;
	}

	//Apply new stats
	if(_lookup_type = "Global"){
	    global.Attack[_character] = max(_base,1);
	}
	else if(_lookup_type = "Local"){
	    _character.attack = max(_base,1);
	}





}
