function Repair_Item() {
	Remove_Gold(floor(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Repair_Cost")*obj_Shop_Controller.repair_value_modifier));
	Fix_Item(lookup_type,character_list[start_index + index],item_index);
}
