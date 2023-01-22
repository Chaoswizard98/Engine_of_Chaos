function Get_Item(_lookup_type,_character,_item_slot) {
	//gets the item in the given item slot
	if(_item_slot = -1){//if the item slot is invalid
	    return "none";//return the null item
	}
	else if(_item_slot = -2){
	    return "Remove";
	}
	else{
	    if(_lookup_type = "Global"){
	        return global.Items[_character,_item_slot];
	    }
	    else if(_lookup_type = "Local"){
	        return _character.items[_item_slot];
	    }
	}
}