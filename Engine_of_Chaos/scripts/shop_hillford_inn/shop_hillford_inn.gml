function Shop_Hillford_Inn(){
	shop_type = "Quantity";
	item_type = "Rare_Items";
	script_ID = "Buy_Item";
	quantity_shop_index = 1;//Shop index of global array
	number_of_items = global.Quantity_Shop_Size[quantity_shop_index];//total number of items in shop
	buy_value_modifier = current_npc.buy_value_modifier;//buys for 70% of item value
	sell_value_modifier = current_npc.sell_value_modifier;//sells for 100% of item value
	repair_value_modifier = current_npc.repair_value_modifier;//repairs for 50% of item value

	var i = 0;
	for(i = 0; i<number_of_items; i+=1){
	    item_array[i] = global.Quantity_Shop_Stock[quantity_shop_index,i];
	}
}