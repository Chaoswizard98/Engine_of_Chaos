function Get_Character_Multi_Strike() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Multi_Strike[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.multi_strike;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Multi_Strike");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Multi_Strike");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
