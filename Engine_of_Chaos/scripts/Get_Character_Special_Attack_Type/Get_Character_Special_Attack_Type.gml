function Get_Character_Special_Attack_Type(_lookup_type,_character,_formula) {
	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Special_Attack_Type[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.special_attack_type;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Special_Attack_Type");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Special_Attack_Type");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return Check_Stat_Override(_base,_mainhand,_offhand); break;
	    default: return Check_Stat_Override(_base,_mainhand,_offhand); break;
	}
}