function Shop_Debug() {
	//This shop contains every item in the game.
	shop_type = "Default";
	item_type = "Default";
	script_ID = "Buy_Item";
	number_of_items = 0;//total number of items in shop
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value

	Add_Item_To_Shop(id,"Battered_Sword");
	Add_Item_To_Shop(id,"Battered_Arrow");
	Add_Item_To_Shop(id,"Wooden_Staff");
	Add_Item_To_Shop(id,"Battered_Knife");
	Add_Item_To_Shop(id,"Wooden_Spear");
	Add_Item_To_Shop(id,"Beer");
	Add_Item_To_Shop(id,"Ring_Of_Chicken");
	Add_Item_To_Shop(id,"Medical_Herb");
	Add_Item_To_Shop(id,"Healing_Seed");
	Add_Item_To_Shop(id,"Healing_Drop");
	Add_Item_To_Shop(id,"Healing_Water");
	Add_Item_To_Shop(id,"Healing_Rain");
	Add_Item_To_Shop(id,"Fairy_Powder");
	Add_Item_To_Shop(id,"Fairy_Tear");
	Add_Item_To_Shop(id,"Light_Of_Hope");
	Add_Item_To_Shop(id,"Antidote");
	Add_Item_To_Shop(id,"Angel_Wing");
	Add_Item_To_Shop(id,"Brave_Apple");
	Add_Item_To_Shop(id,"Forbidden_Box");
	Add_Item_To_Shop(id,"Shining_Ball");
	Add_Item_To_Shop(id,"Blizzard");
	Add_Item_To_Shop(id,"Power_Wine");
	Add_Item_To_Shop(id,"Protect_Milk");
	Add_Item_To_Shop(id,"Quick_Chicken");
	Add_Item_To_Shop(id,"Running_Pimento");
	Add_Item_To_Shop(id,"Cheerful_Bread");
	Add_Item_To_Shop(id,"Bright_Honey");
}