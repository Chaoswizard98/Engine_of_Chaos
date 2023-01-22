function Damage_Item(_lookup_type,_character,_item_slot) {
	Update_Item(_lookup_type,_character,_item_slot,Get_Inventory_Item_Stats(_lookup_type,_character,_item_slot,"Degrades_To"));
}