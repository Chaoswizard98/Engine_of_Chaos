function Get_Character_Magic_Damage(_lookup_type,_character,_formula) {
	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Magic_Damage[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.magic_damage;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Magic_Damage");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Magic_Damage");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
