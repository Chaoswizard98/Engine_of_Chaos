function Get_Equipped_Item_Slot() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _equipment_slot = argument[2];

	if(_lookup_type = "Global"){
	    return global.Equipment[_character,_equipment_slot];
	}
	else if(_lookup_type = "Local"){
	    return _character.equipment[_equipment_slot];
	}

	return -1;//default to null slot



}
