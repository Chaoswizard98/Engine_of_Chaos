function Get_Character_Faction(_lookup_type,_character,_formula){
	var _base, _mainhand, _offhand;

	if(_lookup_type = "Global"){
	    _base = global.Faction[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.faction;
	}

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return _base; break;
	    default: return _base; break;
	}
}