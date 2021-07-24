function Fix_Item() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _item_slot = argument[2];

	Update_Item(_lookup_type,_character,_item_slot,Get_Inventory_Item_Stats(_lookup_type,_character,_item_slot,"Repairs_To"));



}
