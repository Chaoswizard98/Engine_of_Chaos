function Update_Item(_lookup_type,_character,_item_slot,_item) {
	//updates the item in the given item slot
	if(_item_slot != -1){//if the item slot is not invalid
	    if(_item = "none"){//if new item is 'none' remove it
	        Remove_Item(_lookup_type,_character,_item_slot);
	    }
	    else{//otherwise, set old item to the new item
	        if(_lookup_type = "Global"){
	            global.Items[_character,_item_slot] = _item;
	        }
	        else if(_lookup_type = "Local"){
	            _character.items[_item_slot] = _item;
	        }
	    }
	}
}