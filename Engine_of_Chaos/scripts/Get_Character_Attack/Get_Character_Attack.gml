function Get_Character_Attack() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _mainhand, _offhand;
	var _berserk = 0;
	var _attack_up = 0;
	var _attack_down = 0;

	if(_lookup_type = "Global"){
	    _base = global.Attack[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.attack;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Attack");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Attack");

	//Status effects
	if(Character_Is_Under_Effect(_lookup_type,_character,"Berserk")){//Double attack
	    _berserk = _base;
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Attack_Up")){//+10% base attack per level
	    _attack_up = ((_base*.1)*Get_Character_Status_Attack_Up(_lookup_type,_character,_total,"Potency"));
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Attack_Down")){//-10% base attack per level
	    _attack_down = -((_base*.1)*Get_Character_Status_Attack_Up(_lookup_type,_character,_total,"Potency"));
	}


	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand + _berserk + _attack_up + _attack_down); break;
	    default: return _base; break;
	}



}
