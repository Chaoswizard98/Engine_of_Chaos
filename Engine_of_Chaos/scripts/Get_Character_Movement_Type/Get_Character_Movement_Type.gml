function Get_Character_Movement_Type(_lookup_type,_character,_formula){
	var _base, _mainhand, _offhand;
	var _cheat = "none";
	var _effect = "none";

	if(_lookup_type = "Global"){
	    _base = global.Movement_Type[_character];
	    if(global.Ignore_Terrain){
	        _cheat = "Free";
	    }
	}
	else if(_lookup_type = "Local"){
	    _base = _character.movement_type;
	    if((global.Ignore_Terrain)&&((global.In_Battle && _character.control_in_battle)||(_character.player_controlled))){//test for cheat
	        _cheat = "Free";
	    }
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Movement_Type");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Movement_Type");

	if(Character_Is_Under_Effect(_lookup_type,_character,"Flight")){
	    _effect = "Flying";
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return Check_Stat_Override(_base,_offhand,_mainhand); break;
	    case "Total": return Check_Stat_Override(_base,_offhand,_mainhand,_effect,_cheat); break;
	    default: return _base; break;
	}
}