function Inventory_Is_Full() {
	var _lookup_type = argument[0];
	var _character = argument[1];

	if(Get_Item(_lookup_type,_character,(global.Number_Of_Inventory_Slots-1)) = "none"){
	    return false;
	}

	return true;



}
