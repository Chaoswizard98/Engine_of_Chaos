function Sell_Item() {
	//Selling items: grant gold, add rare item to deals shop, remove item from inventory

	//give character gold for item
	Give_Gold(floor(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Value")*obj_Shop_Controller.buy_value_modifier));

	//if rare item, (add item to quantity shop inventory (assuming shop id isnt -1))
	if(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Shop_ID") != -1){
	    Add_To_Shop_Stock(Get_Item(lookup_type,character_list[start_index + index],item_index),Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Shop_ID"));
	}

	//remove item from character's inventory
	Remove_Item(lookup_type,character_list[start_index + index],item_index);



}
