function Item_Stats_SF2_Light_Of_Hope(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_","Item_Name","Light of Hope");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_","Menu_Name","Light\nof Hope");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 26;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "All_Allies";
	use_effect = "Magic_Restore_Item";
	use_effect_level = 4;
	value = 10000;
}