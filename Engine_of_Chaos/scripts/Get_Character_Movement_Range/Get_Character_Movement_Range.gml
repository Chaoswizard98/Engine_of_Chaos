function Get_Character_Movement_Range(_lookup_type,_character,_formula){
	var _base, _mainhand, _offhand;
	var _movement_up = 0;
	var _movement_down = 0;

	if(_lookup_type = "Global"){
	    _base = global.Movement_Range[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.movement_range;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Movement_Range");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Movement_Range");

	//Status effects
	if(Character_Is_Under_Effect(_lookup_type,_character,"Movement_Up")){//+10% base attack per level
	    _movement_up = ((_base*.1)*Get_Character_Status_Movement_Up(_lookup_type,_character,_total,"Potency"));
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Movement_Down")){//-10% base attack per level
	    _movement_down = -((_base*.1)*Get_Character_Status_Movement_Up(_lookup_type,_character,_total,"Potency"));
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return (_base + _mainhand + _offhand); break;
	    case "Total": 
	        if(Character_Is_Under_Effect(_lookup_type,_character,"Snare")){ return 0; }//if snared, move is 0
	        else{ return (_base + _mainhand + _offhand + _movement_up + _movement_down); break; }//otherwise default
	    default: return _base; break;
	}
}