function Get_Character_Attack_Pattern(_lookup_type,_character,_formula){
	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Attack_Pattern[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.attack_pattern;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Attack_Pattern");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Attack_Pattern");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Base+Equipment": return Check_Stat_Override(_base, _mainhand, _offhand); break;
	    case "Total": return Check_Stat_Override(_base, _mainhand, _offhand); break;
	    default: return _base; break;
	}
}