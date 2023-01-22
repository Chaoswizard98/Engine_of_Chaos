function Set_Character_Experience(_lookup_type,_character,_formula,_ammount) {
	var _base;

	//Get Base Stat
	if(_lookup_type = "Global"){
	    _base = global.Experience[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.experience;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Set": _base = _ammount; break;
	    case "Add": 
	        if(Get_Character_Level(_lookup_type,_character,"Derived") < Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Max_Level","Base",1)){//if they are max level, dont grant xp
	            _base += _ammount;//In the rare case of gaining multiple levels (xp values over 100) xp is corrected in level up code.
	        }
	        break;
	    case "Remove": _base -= _ammount; break;
	    default: _base = _ammount; break;
	}


	if((_base > global.Xp_Per_Level)&&(!global.Allow_Xp_Roll_Over)){//if we hit xp cap and dont keep remaining xp,
	    _base = min(_base,global.xp_per_level);//cap at xp required
	}

	//Apply new stats
	if(_lookup_type = "Global"){
	    global.Experience[_character] = max(_base,0);
	}
	else if(_lookup_type = "Local"){
	    _character.experience = max(_base,0);
	}





}
