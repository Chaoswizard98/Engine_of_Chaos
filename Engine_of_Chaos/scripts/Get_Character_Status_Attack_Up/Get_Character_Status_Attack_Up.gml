function Get_Character_Status_Attack_Up(_lookup_type,_character,_formula,_stat) {
	var _base, _mainhand, _offhand, _index;

	switch(_stat){//get correct array slot
	    case "Potency": _index = 0; break;
	    case "Turns_Remaining": _index = 1; break;
	    case "Resistance": _index = 2; break;
	    case "Infliction_Chance": _index = 3; break;
	    case "Infliction_Potency": _index = 4; break;
	    case "Infliction_Turns_Remaining": _index = 5; break;
	}

	if(_lookup_type = "Global"){
	    _base = global.Attack_Up[_character,_index];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.attack_up[_index];
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}