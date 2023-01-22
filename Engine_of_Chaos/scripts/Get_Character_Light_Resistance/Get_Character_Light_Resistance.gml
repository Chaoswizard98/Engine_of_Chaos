function Get_Character_Light_Resistance(_lookup_type,_character,_formula) {
	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Light_Resistance[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.light_resistance;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Light_Resistance");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Light_Resistance");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
