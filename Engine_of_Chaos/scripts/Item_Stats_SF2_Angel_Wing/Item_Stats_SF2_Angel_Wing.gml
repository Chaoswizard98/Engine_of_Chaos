function Item_Stats_SF2_Angel_Wing(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Angel_Wing","Item_Name","Angel Wing");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Angel_Wing","Menu_Name","Angel\n Wing");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 4;
	use_degrade_chance = 100;
	max_use_range = 0;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "Escape";
	use_effect_level = 1;
	value = 40;
}