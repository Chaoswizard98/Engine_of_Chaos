function Inventory_Is_Empty(_lookup_type,_character) {
	if(Get_Item(_lookup_type,_character,0) = "none"){
	    return true;
	}
	return false;
}