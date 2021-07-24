function Get_Character_Lightning_Damage() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Lightning_Damage[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.lightning_damage;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Lightning_Damage");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Lightning_Damage");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
