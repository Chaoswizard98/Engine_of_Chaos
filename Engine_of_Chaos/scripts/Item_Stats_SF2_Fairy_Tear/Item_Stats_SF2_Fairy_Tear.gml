function Item_Stats_SF2_Fairy_Tear(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Fairy_Tear","Item_Name","Fairy Tear");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Fairy_Tear","Menu_Name","Fairy\n Tear");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 7;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "Magic_Restore_Item";
	use_effect_level = 2;
	value = 300;
}