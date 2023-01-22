function Has_Item_In_Inventory(_lookup_type,_character,_item) {
	var i = 0;
	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Get_Item(_lookup_type,_character,i) = _item){
	        return true;
	    }
	}
	return false;//does not have item in inventory
}