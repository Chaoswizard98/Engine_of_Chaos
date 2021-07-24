function Get_Character_Voice() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _override, _mainhand, _offhand, _inventory, _death;

	if(_lookup_type = "Global"){
	    _base = global.Voice_ID[_character];
	    _override = global.Voice_ID_Override[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.voice_ID;
	    _override = _character.voice_ID_override;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Voice_ID");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Voice_ID");
	_inventory = Get_Costume(_lookup_type,_character,"Inventory_Voice");
	_death = Get_Costume(_lookup_type,_character,"Dead_Voice");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return Check_Stat_Override(_base,_inventory,_mainhand,_offhand,_override,_inventory,_death); break;
	    default: return Check_Stat_Override(_base,_inventory,_mainhand,_offhand,_override,_inventory,_death); break;
	}





}
