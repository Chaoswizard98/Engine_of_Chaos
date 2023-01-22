function Get_Item_Slot(_lookup_type,_character,_item) {
	//get item slot based on item
	var i = 0;
	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Get_Item(_lookup_type,_character,i) = _item){
	        return i;
	    }
	}
	return -1;//does not have item in inventory
}