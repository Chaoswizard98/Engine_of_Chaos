function Has_Item_Slot_Equipped() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item_slot = argument[2];
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
