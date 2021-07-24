function Get_Item() {
	//gets the item in the given item slot
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item_slot = argument[2];

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
