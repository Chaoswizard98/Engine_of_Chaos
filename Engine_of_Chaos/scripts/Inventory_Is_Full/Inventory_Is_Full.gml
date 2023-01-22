function Inventory_Is_Full(_lookup_type,_character) {
	if(Get_Item(_lookup_type,_character,(global.Number_Of_Inventory_Slots-1)) = "none"){
	    return false;
	}
	return true;
}