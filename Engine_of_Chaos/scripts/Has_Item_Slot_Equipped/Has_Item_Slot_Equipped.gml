function Has_Item_Slot_Equipped(_lookup_type,_character,_item_slot) {
	var i = 0;
	if(_lookup_type = "Global"){
	    for(i = 0; i<global.Number_Of_Equipment_Slots; i+= 1){
	        if(global.Equipment[_character,i] = _item_slot){
	            return true;
	        }
	    }
	}
	else if(_lookup_type = "Local"){
	    for(i = 0; i<global.Number_Of_Equipment_Slots; i+= 1){
	        if(_character.equipment[i] = _item_slot){
	            return true;
	        }
	    }
	}
	return false;
}