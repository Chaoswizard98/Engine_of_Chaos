function Fill_Equip_Array() {
	//fills the member list's equip array with only items the 
	//selected character can equip
	var _object = argument[0];
	var _character = argument[1];
	var _equipment_slot = Get_Equipment_Slot_Name(argument[2]);

	var i = 0;
	var j = 0;
	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Can_Equip_Item("Local",_character,Get_Item("Local",_character,i),_equipment_slot)){//if we can equip to main hand,
	        _object.inventory_slot[j] = i;
	        j+= 1;
	    }
	}
	while(j<global.Number_Of_Inventory_Slots){//fill remaining spaces with invalid slot (-1)
	    _object.inventory_slot[j] = -1;
	    j+= 1;
	}

	_object.inventory_slot[global.Number_Of_Inventory_Slots-1] = -2;//set to remove



}
