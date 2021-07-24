function Item_Degrades() {
	//Test if an item gets damaged
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item_slot = argument[2];
	var _degrade_type = argument[3];

	if(Get_Inventory_Item_Stats(_lookup_type,_character,_item_slot,_degrade_type) >= random_range(1,100)){//RNG against degrade chance
	    return true;
	}

	return false;



}
