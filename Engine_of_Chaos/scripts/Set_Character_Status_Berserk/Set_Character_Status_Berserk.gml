function Set_Character_Status_Berserk() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _ammount = argument[3];
	var _stat = argument[4];

	var _base, _index;

	switch(_stat){//get correct array slot
	    case "Potency": _index = 0; break;
	    case "Turns_Remaining": _index = 1; break;
	    case "Resistance": _index = 2; break;
	    case "Infliction_Chance": _index = 3; break;
	    case "Infliction_Potency": _index = 4; break;
	    case "Infliction_Turns_Remaining": _index = 5; break;
	}

	//Get Base Stat
	if(_lookup_type = "Global"){
	    _base = global.Berserk[_character,_index];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.berserk[_index];
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
	    global.Berserk[_character,_index] = _base;
	}
	else if(_lookup_type = "Local"){
	    _character.berserk[_index] = _base;
	}



}
