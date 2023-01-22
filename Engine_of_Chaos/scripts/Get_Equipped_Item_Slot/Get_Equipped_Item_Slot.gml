function Get_Equipped_Item_Slot(_lookup_type,_character,_equipment_slot) {
	if(_lookup_type = "Global"){
	    return global.Equipment[_character,_equipment_slot];
	}
	else if(_lookup_type = "Local"){
	    return _character.equipment[_equipment_slot];
	}
	return -1;//default to null slot
}