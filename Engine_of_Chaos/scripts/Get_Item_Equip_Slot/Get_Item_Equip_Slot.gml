function Get_Item_Equip_Slot(_lookup_type,_character,_item) {
	//returns the first slot this item can be equipped to
	var i = 0;    
	for(i = 0; i < global.Number_Of_Equipment_Slots; i += 1){
	    if(Can_Equip_Item(_lookup_type,_character,_item,Get_Equipment_Slot_Name(i))){
	        return i;
	    }
	}
	return -1;
}