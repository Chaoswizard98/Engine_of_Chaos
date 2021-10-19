function Shop_Debug() {
	//This shop contains every item in the game.
	shop_type = "Default";
	item_type = "Default";
	script_ID = "Buy_Item";
	number_of_items = 0;//total number of items in shop
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value

	Add_Item_To_Shop(id,"AU_Battered_Sword");
	Add_Item_To_Shop(id,"AU_Battered_Arrow");
	Add_Item_To_Shop(id,"AU_Wooden_Staff");
	Add_Item_To_Shop(id,"AU_Battered_Knife");
	Add_Item_To_Shop(id,"AU_Wooden_Spear");
	Add_Item_To_Shop(id,"AU_Beer");
	Add_Item_To_Shop(id,"AU_Ring_Of_Chicken");
	Add_Item_To_Shop(id,"SF2_Medical_Herb");
	Add_Item_To_Shop(id,"SF2_Healing_Seed");
	Add_Item_To_Shop(id,"SF2_Healing_Drop");
	Add_Item_To_Shop(id,"SF2_Healing_Water");
	Add_Item_To_Shop(id,"SF2_Healing_Rain");
	Add_Item_To_Shop(id,"SF2_Fairy_Powder");
	Add_Item_To_Shop(id,"SF2_Fairy_Tear");
	Add_Item_To_Shop(id,"SF2_Light_Of_Hope");
	Add_Item_To_Shop(id,"SF2_Antidote");
	Add_Item_To_Shop(id,"SF2_Angel_Wing");
	Add_Item_To_Shop(id,"SF2_Brave_Apple");
	Add_Item_To_Shop(id,"SF1_Forbidden_Box");
	Add_Item_To_Shop(id,"SF2_Shining_Ball");
	Add_Item_To_Shop(id,"SF2_Blizzard");
	Add_Item_To_Shop(id,"SF2_Power_Wine");
	Add_Item_To_Shop(id,"SF2_Protect_Milk");
	Add_Item_To_Shop(id,"SF2_Quick_Chicken");
	Add_Item_To_Shop(id,"SF2_Running_Pimento");
	Add_Item_To_Shop(id,"SF2_Cheerful_Bread");
	Add_Item_To_Shop(id,"SF2_Bright_Honey");
}