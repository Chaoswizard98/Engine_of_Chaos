function Set_Spell_Level() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _spell = argument[2];
	var _formula = argument[3];
	var _ammount = argument[4];

	var _base = -1;

	//Get Base Stat
	var i = 0;
	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){//loop through all inventory spaces
	    if(Get_Spell(_lookup_type,_character,i) = _spell){//if the spell is in this slot,
	        _base = Get_Spell_Level(_lookup_type,_character,i);//Get Base Stat
	        break;
	    }
	}
	if(_base != -1){//if we found the spell    
	    //Can ommit certain flags here based on formula argument.
	    switch(_formula){
	        case "Set": _base = _ammount; break;
	        case "Add": _base += _ammount; break;
	        case "Remove": _base -= _ammount; break;
	        default: _base = _ammount; break;
	    }
    
	    //Apply new stats
	    if(_lookup_type = "Global"){
	        global.Spell_Level[_character,i] = max(_base,1);
	    }
	    else if(_lookup_type = "Local"){
	        _character.spell_level[i] = max(_base,1);
	    }
	}



}
