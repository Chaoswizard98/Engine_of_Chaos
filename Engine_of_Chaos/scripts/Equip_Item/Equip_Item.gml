function Equip_Item(_lookup_type,_character,_equip_slot,_item_slot) {
	if(_lookup_type = "Global"){
		global.Equipment[_character,_equip_slot] = _item_slot;
		Update_Character_Stats(_lookup_type,_character);
	}
	else if(_lookup_type = "Local"){
		_character.equipment[_equip_slot] = _item_slot;
		Set_Appearance(_character);
	}
}