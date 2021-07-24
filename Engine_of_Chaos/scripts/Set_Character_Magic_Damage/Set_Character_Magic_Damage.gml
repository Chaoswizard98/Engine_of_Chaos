function Set_Character_Magic_Damage() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _ammount = argument[3];

	var _base;

	//Get Base Stat
	if(_lookup_type = "Global"){
	    _base = global.Magic_Damage[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.magic_damage;
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
	    global.Magic_Damage[_character] = max(_base,1);
	}
	else if(_lookup_type = "Local"){
	    _character.magic_damage = max(_base,1);
	}





}
