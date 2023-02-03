function Item_Stats_SF2_Fairy_Powder(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Fairy_Powder","Item_Name","Fairy Powder");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Fairy_Powder","Menu_Name","Fairy\n Powder");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 5;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "SF2_Fairy_Powder";
	use_effect_level = 3;
	value = 100;
}