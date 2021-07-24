function Inventory_Is_Empty() {
	var _lookup_type = argument[0];
	var _character = argument[1];

	if(Get_Item(_lookup_type,_character,0) = "none"){
	    return true;
	}

	return false;



}
