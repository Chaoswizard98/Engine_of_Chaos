function Has_Equippable_Item() {
	//equipement slot, character
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _equipment_slot = Get_Equipment_Slot_Name(argument[2]);
	var i = 0;

	for(i = 0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Can_Equip_Item(_lookup_type,_character,Get_Item(_lookup_type,_character,i),_equipment_slot)){
	        return true;//we can equip an item
	    }
	}

	return false;//cant equip item, return false



}
