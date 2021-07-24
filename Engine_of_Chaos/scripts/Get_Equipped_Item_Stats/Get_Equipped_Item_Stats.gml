function Get_Equipped_Item_Stats() {                         
	//returns the given stat for the selected item
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _equipment_slot = argument[2];
	var _return_stat = argument[3];

	return Get_Item_Stats(Get_Equipped_Item(_lookup_type,_character,_equipment_slot),_return_stat,_lookup_type,_character);



}
