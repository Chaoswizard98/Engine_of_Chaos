function Buy_Item() {
	//Gives character an item, possibly auto-equips, and removes the item from quantity shops
	var _auto_equip = argument[0];

	Give_Character_Item(lookup_type,character_list[start_index + index],obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index],_auto_equip);
	Remove_Gold(floor(Get_Item_Stats(obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index],"Value")*obj_Shop_Controller.sell_value_modifier));

	if(obj_Shop_Controller.shop_type = "Quantity"){
	    var i = 0;
	    for(i = obj_Shop_Controller.item_index; i<global.Quantity_Shop_Size[Get_Quantity_Shop_ID(obj_Shop_Controller.shop_ID)] -1; i+= 1){//loop through inventory and shift items down 1 slot
	        global.Quantity_Shop_Stock[obj_Shop_Controller.shop_ID,i] = global.Quantity_Shop_Stock[obj_Shop_Controller.shop_ID,i+1];
	        obj_Shop_Controller.item_array[i] = obj_Shop_Controller.item_array[i+1];
	    }
	    global.Quantity_Shop_Size[Get_Quantity_Shop_ID(obj_Shop_Controller.shop_ID)] -= 1;
	    obj_Shop_Controller.item_array[global.Quantity_Shop_Size[Get_Quantity_Shop_ID(obj_Shop_Controller.shop_ID)]] = "none";
	    obj_Shop_Controller.number_of_items -= 1;
	    obj_Shop_Controller.number_of_pages = ceil(obj_Shop_Controller.number_of_items / obj_Shop_Controller.items_per_page);
	    obj_Shop_Controller.item_index = 0;
	    obj_Shop_Controller.page_number = 0;
	}




}
