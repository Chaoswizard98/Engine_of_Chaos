function Get_Equipped_Item() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _equipment_slot = argument[2];

	if(_lookup_type = "Global"){
	    if(global.Equipment[_character,_equipment_slot] = -1){
	        return "none";
	    }
	    else{
	        return global.Items[_character, global.Equipment[_character,_equipment_slot]];
	    }
	} 
	else{
	    if(_character.equipment[_equipment_slot] = -1){
	        return "none";
	    }
	    else{
	        return _character.items[_character.equipment[_equipment_slot]];
	    }
	}



}
