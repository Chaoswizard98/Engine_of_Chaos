function Get_Equipped_Item_Stats(_lookup_type,_character,_equipment_slot,_return_stat) {                         
	//returns the given stat for the selected item
	return Get_Item_Stats(Get_Equipped_Item(_lookup_type,_character,_equipment_slot),_return_stat,_lookup_type,_character);
}