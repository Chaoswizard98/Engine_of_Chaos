function Fill_Member_List_Equip_Array(_lookup_type,_character,_slot) {
	//fills the member list's equip array with only items the 
	//selected character can equip
	var _equipment_slot = Get_Equipment_Slot_Name(_slot);

	var i = 0;
	var j = 0;
	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Can_Equip_Item(_lookup_type,_character,Get_Item(_lookup_type,_character,i),_equipment_slot)){//if we can equip to main hand,
	        obj_Member_List_Controller.item_array[j] = i;
	        j+= 1;
	    }
	}
	while(j<global.Number_Of_Inventory_Slots){//fill remaining spaces with invalid slot (-1)
	    obj_Member_List_Controller.item_array[j] = -1;
	    j+= 1;
	}
}