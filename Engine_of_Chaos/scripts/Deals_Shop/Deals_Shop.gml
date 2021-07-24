function Deals_Shop() {
	//This shop contains rare items the player has sold to shops
	//over the course of the game.

	shop_type = "Quantity";
	item_type = "Rare_Items";
	script_ID = "Buy_Item";
	number_of_items = global.Quantity_Shop_Size[Get_Quantity_Shop_ID(shop_ID)];//total number of items in shop
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value

	var i = 0;
	for(i = 0; i<number_of_items; i+=1){
	    item_array[i] = global.Quantity_Shop_Stock[Get_Quantity_Shop_ID(shop_ID),i];
	}



}
