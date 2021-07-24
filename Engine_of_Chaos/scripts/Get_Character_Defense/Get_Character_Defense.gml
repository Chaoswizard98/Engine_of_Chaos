function Get_Character_Defense() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _mainhand, _offhand;
	var _defense_up = 0;
	var _defense_down = 0;

	if(_lookup_type = "Global"){
	    _base = global.Defense[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.defense;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Defense");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Defense");

	//Status effects
	if(Character_Is_Under_Effect(_lookup_type,_character,"Agility_Up")){//+10% base attack per level
	    _defense_up = ((_base*.1)*Get_Character_Status_Defense_Up(_lookup_type,_character,_total,"Potency"));
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Agility_Down")){//-10% base attack per level
	    _defense_down = -((_base*.1)*Get_Character_Status_Defense_Up(_lookup_type,_character,_total,"Potency"));
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand + _defense_up + _defense_down); break;
	    default: return _base; break;
	}



}
