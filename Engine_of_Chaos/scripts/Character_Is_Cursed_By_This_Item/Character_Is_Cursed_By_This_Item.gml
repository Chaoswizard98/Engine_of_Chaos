function Character_Is_Cursed_By_This_Item() {
	//Is the character currently cursed by this item?
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item_slot = argument[2];

	if(Has_Item_Slot_Equipped(_lookup_type,_character,_item_slot)&&(Get_Inventory_Item_Stats(_lookup_type,_character,_item_slot,"Curse_Type")!="none")){//if item is equipped, and item is cursed,
	    return true;
	}



}
