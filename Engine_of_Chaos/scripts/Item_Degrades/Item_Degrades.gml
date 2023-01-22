function Item_Degrades(_lookup_type,_character,_item_slot,_degrade_type) {
	//Test if an item gets damaged
	if(global.Infinite_Item_Use){
		return false;	
	}
	if(Get_Inventory_Item_Stats(_lookup_type,_character,_item_slot,_degrade_type) >= random_range(1,100)){//RNG against degrade chance
	    return true;
	}
	return false;
}