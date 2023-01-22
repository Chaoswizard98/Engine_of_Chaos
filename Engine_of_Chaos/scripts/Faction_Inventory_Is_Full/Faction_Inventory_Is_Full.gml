function Faction_Inventory_Is_Full(_lookup_type,_faction) {
	var i = 0;

	if(_faction = "none"){//if the character is factionless, they dont have an inventory
	    return true;
	}

	if(_lookup_type = "Global"){
	    while(i < global.Number_Of_Characters){//loop through all characters
	        if(Get_Character_Faction(_lookup_type,i,"Total") = _faction){//if they are in the same faction,
	            if(!Inventory_Is_Full(_lookup_type,i)){//if inventory has a free space
	                return false;//party can hold item
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
	                return false;//party can hold item
	                break;
	            }
	        }
	    }
	}

	return true;//party inventory is full
}