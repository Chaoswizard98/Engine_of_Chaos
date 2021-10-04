function Shop_Sell() {
	//This 'shop' doesnt sell anything.
	//it's a technical script for the 'sell item' event
	shop_type = "Default";
	item_type = "Default";
	script_ID = "Sell_Item";
	number_of_items = 0;//total number of items in shop
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value
}