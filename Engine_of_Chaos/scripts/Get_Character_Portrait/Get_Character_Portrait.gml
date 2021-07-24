function Get_Character_Portrait() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _override, _mainhand, _offhand, _inventory, _death;

	if(_lookup_type = "Global"){
	    _base = global.Portrait_ID[_character];
	    _override = global.Portrait_ID_Override[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.portrait_ID;
	    _override = _character.portrait_ID_override;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Portrait_ID");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Portrait_ID");
	_inventory = Get_Costume(_lookup_type,_character,"Inventory_Portrait");
	_death = Get_Costume(_lookup_type,_character,"Dead_Portrait");

	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return Check_Stat_Override(_base,_inventory,_mainhand,_offhand,_override,_inventory,_death); break;
	    default: return Check_Stat_Override(_base,_inventory,_mainhand,_offhand,_override,_inventory,_death); break;
	}





}
