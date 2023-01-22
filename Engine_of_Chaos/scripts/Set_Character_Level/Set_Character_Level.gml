function Set_Character_Level(_lookup_type,_character,_formula,_ammount) {
	var _base;

	//Get Base Stat
	if(_lookup_type = "Global"){
	    _base = global.Level[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.level;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Set": _base = _ammount; break;
	    case "Add": _base += _ammount; break;
	    case "Remove": _base -= _ammount; break;
	    default: _base = _ammount; break;
	}

	_base = min(_base,Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Max_Level","Base",1));

	//Apply new stats
	if(_lookup_type = "Global"){
	    global.Level[_character] = max(_base,1);
	}
	else if(_lookup_type = "Local"){
	    _character.level = max(_base,1);
	}





}
