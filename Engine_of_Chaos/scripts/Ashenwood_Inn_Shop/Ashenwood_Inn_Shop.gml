function Ashenwood_Inn_Shop() {
	//This shop contains every item in the game.

	shop_type = "Default";
	item_type = "Default";
	script_ID = "Buy_Item";
	number_of_items = 0;//total number of items in shop
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value

	var i = 0;
	item_array[i] = "Beer";
	i += 1;

	number_of_items = i;//total number of items in shop



}