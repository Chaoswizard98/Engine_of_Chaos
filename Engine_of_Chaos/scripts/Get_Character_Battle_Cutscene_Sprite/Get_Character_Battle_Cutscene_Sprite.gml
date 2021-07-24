function Get_Character_Battle_Cutscene_Sprite() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	var _base, _override, _mainhand, _offhand, _inventory;

	if(_lookup_type = "Global"){
	    _base = global.Battle_Cutscene_Sprite_ID[_character];
	    _override = global.Battle_Cutscene_Sprite_ID_Override[_character];
	}
	else if(_lookup_type = "Local"){
	    _base = _character.battle_cutscene_sprite_ID;
	    _override = _character.battle_cutscene_sprite_ID_override;
	}

	_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Battle_Cutscene_Sprite_ID");
	_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Battle_Cutscene_Sprite_ID");
	_inventory = Get_Costume(_lookup_type,_character,"Battle_Cutscene_Inventory_Sprite");


	//Can ommit certain flags here based on formula argument.
	switch(_formula){
	    case "Base": return _base; break;
	    case "Total": return Check_Stat_Override(_base,_inventory,_mainhand,_offhand,_override,_inventory); break;
	    default: return Check_Stat_Override(_base,_inventory,_mainhand,_offhand,_override,_inventory); break;
	}





}
