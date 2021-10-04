function Shop_Ashenwood_Weapon(){
	shop_type = "Default";
	item_type = "Default";
	script_ID = "Buy_Item";
	number_of_items = 0;//total number of items in shop (Don't touch! Automatically sets when adding items)
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value (Set via NPC variables)
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value (Set via NPC variables)
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value (Set via NPC variables)

	Add_Item_To_Shop(id,"Battered_Sword");
	Add_Item_To_Shop(id,"Battered_Arrow");
	Add_Item_To_Shop(id,"Wooden_Staff");
	Add_Item_To_Shop(id,"Battered_Knife");
	Add_Item_To_Shop(id,"Wooden_Spear");
}