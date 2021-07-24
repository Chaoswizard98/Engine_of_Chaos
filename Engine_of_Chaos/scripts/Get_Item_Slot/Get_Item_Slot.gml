function Get_Item_Slot() {
	//get item slot based on item
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item = argument[2];
	var i = 0;

	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Get_Item(_lookup_type,_character,i) = _item){
	        return i;
	    }
	}

	return -1;//does not have item in inventory



}
