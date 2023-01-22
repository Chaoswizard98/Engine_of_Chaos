function Character_Is_Cursed_By_This_Item(_lookup_type,_character,_item_slot) {
	//Is the character currently cursed by this item?
	if(_item_slot = -1){
		return false;	
	}
	if(Has_Item_Slot_Equipped(_lookup_type,_character,_item_slot)&&(Get_Inventory_Item_Stats(_lookup_type,_character,_item_slot,"Curse_Type")!="none")){//if item is equipped, and item is cursed,
	    return true;
	}
}