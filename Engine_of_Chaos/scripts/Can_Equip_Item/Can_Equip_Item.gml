function Can_Equip_Item() {
	//Checks if we can equip an item (optionally to a specific inventory slot)
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item = argument[2];
	var _equip_slot = "Any";
	if(argument_count > 3){
	    _equip_slot = argument[3];
	}

	var i = 0;
	if(_equip_slot != "Any"){//if we provided an item slot,
	    if(Get_Item_Stats(_item, _equip_slot,_lookup_type, _character)){ 
	        return true;
	    }
	}
	else{//no slot provided, cycle through the list
	    for(i = 0; i<global.Number_Of_Equipment_Slots; i+= 1){
	        if(Get_Item_Stats(_item, Get_Equipment_Slot_Name(i),_lookup_type, _character)){ 
	            return true;
	        }
	    }
	}

	return false;



}
