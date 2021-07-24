function Give_Faction_Item() {
	var _lookup_type = argument[0];
	var _faction = argument[1];
	var _item = argument[2];
	var i = 0;

	if(_lookup_type = "Global"){
	    while(i < global.Number_Of_Characters){//loop through all characters
	        if(Get_Character_Faction(_lookup_type,i,"Total") = _faction){//if they are in the same faction,
	            if(!Inventory_Is_Full(_lookup_type,i)){//if inventory has a free space
	                Give_Character_Item(_lookup_type,i,_item);
	                return i;
	                break;
	            }
	        }
	        i += 1;
	    }
	}
	else if(_lookup_type = "Local"){
	    with(obj_Character){//loop through all characters
	        if(Get_Character_Faction(_lookup_type,id,"Total") = _faction){//if they are in the same faction,
	            if(!Inventory_Is_Full(_lookup_type,id)){//if inventory has a free space
	                Give_Character_Item(_lookup_type,id,_item);
	                return id;
	                break;
	            }
	        }
	    }
	}



}
