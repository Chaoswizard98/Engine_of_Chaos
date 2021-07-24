function Has_Item_In_Inventory() {
	//tests if a character has an item in their inventory
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item = argument[2];
	var i = 0;

	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Get_Item(_lookup_type,_character,i) = _item){
	        return true;
	    }
	}

	return false;//does not have item in inventory



}
