function Item_Stats_SF2_Shining_Ball(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Shining_Ball","Item_Name","Shining Ball");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Shining_Ball","Menu_Name","Shining\n Ball");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 16;
	use_degrade_chance = 100;
	max_use_range = 2;
	min_use_range = 0;
	use_size = 2;
	use_target_type = "Enemy";
	use_select_type = "Enemy";
	use_effect = "Blaze";
	use_effect_level = 3;
	value = 1000;
}