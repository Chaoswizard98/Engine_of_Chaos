function Repair_Item() {
	//Selling items: grant gold, add rare item to deals shop, remove item from inventory

	//give character gold for item
	Remove_Gold(floor(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Repair_Cost")*obj_Shop_Controller.repair_value_modifier));
	Fix_Item(lookup_type,character_list[start_index + index],item_index);

	//Update_Item(lookup_type,character_list[start_index + index],item_index,Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),'Repairs_To'));



}
