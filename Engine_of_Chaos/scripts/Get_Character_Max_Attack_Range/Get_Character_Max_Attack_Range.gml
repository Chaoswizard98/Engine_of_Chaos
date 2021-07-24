function Get_Character_Max_Attack_Range() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _removal = 0;
	if(argument_count > 3){
	    _removal = Get_Equipped_Item_Stats(_lookup_type,_character,argument[3],"Max_Attack_Range");
	}

	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Max_Attack_Range[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.max_attack_range;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Max_Attack_Range");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Max_Attack_Range");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Ommit_Equipment_Slot": return (_base + _mainhand + _offhand)-_removal; break;
	    case "Total": return (_base + _mainhand + _offhand); break;
	    default: return _base; break;
	}



}
