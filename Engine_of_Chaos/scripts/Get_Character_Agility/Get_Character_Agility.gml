function Get_Character_Agility(_lookup_type,_character,_formula){
	var _base, _mainhand, _offhand;
	var _agility_up = 0;
	var _agility_down = 0;

	if(_lookup_type = "Global"){
	    _base = global.Agility[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.agility;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Agility");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Agility");

	//Status effects
	if(Character_Is_Under_Effect(_lookup_type,_character,"Agility_Up")){//+10% base attack per level
	    _agility_up = ((_base*.1)*Get_Character_Status_Defense_Up(_lookup_type,_character,_total,"Potency"));
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Agility_Down")){//-10% base attack per level
	    _agility_down = -((_base*.1)*Get_Character_Status_Defense_Up(_lookup_type,_character,_total,"Potency"));
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": return (_base + _mainhand + _offhand + _agility_up + _agility_down); break;
	    default: return _base; break;
	}
}