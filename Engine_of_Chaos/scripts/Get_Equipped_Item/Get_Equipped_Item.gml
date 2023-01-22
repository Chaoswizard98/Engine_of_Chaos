function Get_Equipped_Item(_lookup_type,_character,_equipment_slot) {
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