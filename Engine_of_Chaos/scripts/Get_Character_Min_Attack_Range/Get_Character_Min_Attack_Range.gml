function Get_Character_Min_Attack_Range(_lookup_type,_character,_formula,_equipment_slot = -1) {
	var _removal = 0;
	if(_equipment_slot != -1){
	    _removal = Get_Equipped_Item_Stats(_lookup_type,_character,_equipment_slot,"Min_Attack_Range");
	}

	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Min_Attack_Range[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.min_attack_range;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Min_Attack_Range");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Min_Attack_Range");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Ommit_Equipment_Slot": return (_base + _mainhand + _offhand)-_removal; break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}
}