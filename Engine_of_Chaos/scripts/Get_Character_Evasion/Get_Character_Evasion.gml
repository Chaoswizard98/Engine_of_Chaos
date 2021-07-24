function Get_Character_Evasion() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Evasion[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.evasion;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Evasion");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Evasion");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
