function Faction_Has_Item_In_Inventory(_lookup_type,_faction,_item) {
	var i = 0;

	if(_lookup_type = "Global"){
	    while(i < global.Number_Of_Characters){//loop through all characters
	        if(Get_Character_Faction(_lookup_type,i,"Total") = _faction){//if they are in the same faction,
	            if(Has_Item_In_Inventory(_lookup_type,i,_item)){//if character has item
	                return true;
	                break;
	            }
	        }
	        i += 1;
	    }
	}
	else if(_lookup_type = "Local"){
	    with(obj_Character){//loop through all characters
	        if(Get_Character_Faction(_lookup_type,id,"Total") = _faction){//if they are in the same faction,
	            if(Has_Item_In_Inventory(_lookup_type,id,_item)){//if character has item
	                return true;
	                break;
	            }
	        }
	    }
	}
	return false;
}
