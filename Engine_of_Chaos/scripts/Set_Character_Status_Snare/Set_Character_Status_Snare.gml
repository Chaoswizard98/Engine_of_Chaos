function Set_Character_Status_Snare(_lookup_type,_character,_formula,_ammount,_stat) {
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
	    _base = global.Snare[_character,_index];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.snare[_index];
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
	    global.Snare[_character,_index] = _base;
	}
	else if(_lookup_type = "Local"){
	    _character.snare[_index] = _base;
	}



}
