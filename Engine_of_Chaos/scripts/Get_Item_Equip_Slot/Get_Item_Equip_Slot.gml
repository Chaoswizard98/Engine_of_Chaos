function Get_Item_Equip_Slot() {
	//returns the first slot this item can be equipped to
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item = argument[2];
	var i = 0;    

	for(i = 0; i < global.Number_Of_Equipment_Slots; i += 1){
	    if(Can_Equip_Item(_lookup_type,_character,_item,Get_Equipment_Slot_Name(i))){
	        return i;
	    }
	}
	return -1;
}
