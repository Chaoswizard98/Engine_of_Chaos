function Get_Character_Attack_Size() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Attack_Size[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.attack_size;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Attack_Size");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Attack_Size");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
