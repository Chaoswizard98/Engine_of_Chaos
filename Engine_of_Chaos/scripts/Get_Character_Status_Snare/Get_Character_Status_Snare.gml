function Get_Character_Status_Snare(_lookup_type,_character,_formula,_stat) {
	var _base, _index;
	var _mainhand = 0;
	var _offhand = 0;

	switch(_stat){//get correct array slot
	    case "Potency": _index = 0; break;
	    case "Turns_Remaining": _index = 1; break;
	    case "Resistance": _index = 2; break;
	    case "Infliction_Chance": _index = 3; break;
	    case "Infliction_Potency": _index = 4; break;
	    case "Infliction_Turns_Remaining": _index = 5; break;
	}

	if(_lookup_type = "Global"){
	    _base = global.Snare[_character,_index];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.snare[_index];
	}

	if((_stat != "Potency") && (_stat != "Turns_Remaining")){
	    _mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Attack_Down_"+_stat);
	    _offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Attack_Down_"+_stat);
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return _base + _mainhand + _offhand; break;
	    default: return _base; break;
	}



}
