function Get_Costume() {
	//====================================================
	//Checks if a character has a certain costume override
	//====================================================
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _return_stat = argument[2];

	var _inventory_sprite = "none";
	var _battle_cutscene_inventory_sprite = "none";
	var _inventory_voice = "none";
	var _inventory_portrait = "none";

	var _dead_sprite = "none";
	var _dead_voice = "none";
	var _dead_portrait = "none";

	//===============//
	//Check for Death//
	//===============//
	if(Character_Is_Dead(_lookup_type,_character)){//if character is dead
	    _dead_sprite = "Death_Flame";
	    _dead_voice = "none";
	    _dead_portrait = "none";
	}
	//===========================//
	//Check for Item in Inventory//
	//===========================//
	switch(Get_Character_ID(_lookup_type,_character,"Total")){
	    case "Jason": 
	        /*if(Has_Item_In_Inventory(_lookup_type,_character,'Ring_Of_Chicken')){//Example 'in inventory' item
	            _inventory_sprite = 'Chicken';
	            _inventory_voice = 'Chicken';
	            _inventory_portrait = 'Chicken';
	        }*/
	    break;
	}

	switch(_return_stat){
	    case "Dead_Sprite": return _dead_sprite; break;
	    case "Dead_Portrait": return _dead_portrait; break;
	    case "Dead_Voice": return _dead_voice; break;
    
	    case "Battle_Cutscene_Inventory_Sprite": return _battle_cutscene_inventory_sprite; break;
	    case "Inventory_Sprite": return _inventory_sprite; break;
	    case "Inventory_Portrait": return _inventory_portrait; break;
	    case "Inventory_Voice": return _inventory_voice; break;
	    default: return "none"; break;
	}



}
