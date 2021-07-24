function Set_Character_Water_Resistance() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _ammount = argument[3];

	var _base;

	//Get Base Stat
	if(_lookup_type = "Global"){
	    _base = global.Water_Resistance[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.water_resistance;
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
	    global.Water_Resistance[_character] = max(_base,1);
	}
	else if(_lookup_type = "Local"){
	    _character.water_resistance = max(_base,1);
	}





}
