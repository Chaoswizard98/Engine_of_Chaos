function Remove_Item(_lookup_type,_character,_item_slot) {
	var i = 0;

	//remove item
	for(i = 0; i< global.Number_Of_Equipment_Slots; i+=1){
	    if(Get_Equipped_Item_Slot(_lookup_type,_character,i) = _item_slot){//if we remove an equipped weapon
	        Equip_Item(_lookup_type,_character,i,-1);//lookup type, character, equip slot, item slot
	    }
	    else if(Get_Equipped_Item_Slot(_lookup_type,_character,i) > _item_slot){//check if we need to shift it down 1 slot
	        if(_lookup_type = "Global"){
	            global.Equipment[_character,i] -= 1;//shift it down 1 slot
	        }
	        else if(_lookup_type = "Local"){
	            _character.equipment[i] -= 1;
	        }
	    }
	}

	//re-organize inventory
	for(i = _item_slot; i<global.Number_Of_Inventory_Slots -1; i+= 1){//loop through inventory and shift items down 1 slot
	    if(_lookup_type = "Global"){
	        global.Items[_character,i] = global.Items[_character,i+1];//current_slot = next_slot
	    }
	    else if(_lookup_type = "Local"){
	        _character.items[i] = _character.items[i+1];
	    }
	}

	//set empty slot
	if(_lookup_type = "Global"){
	    global.Items[_character,global.Number_Of_Inventory_Slots-1] = "none";//set final slot to empty
	    //update costume
	    Update_Character_Stats(_lookup_type,_character);
	}
	else if(_lookup_type = "Local"){
	    _character.items[global.Number_Of_Inventory_Slots-1] = "none";//set final slot to empty
		Set_Appearance(_character);
	}



}
