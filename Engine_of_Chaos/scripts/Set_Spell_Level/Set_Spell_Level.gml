function Set_Spell_Level(_lookup_type,_character,_spell_slot,_formula,_ammount){
	var _base = Get_Spell_Level(_lookup_type,_character,_spell_slot);//Get Base Stat
	
	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Set": _base = _ammount; break;
	    case "Add": _base += _ammount; break;
	    case "Remove": _base -= _ammount; break;
	    default: _base = _ammount; break;
	}
    
	//Apply new stats
	if(_lookup_type = "Global"){
	    global.Spell_Level[_character,_spell_slot] = max(_base,1);
	}
	else if(_lookup_type = "Local"){
	    _character.spell_level[_spell_slot] = max(_base,1);
	}
}