function Item_Stats_AU_Magic_Berries(_lookup_type,_character){
	item_name = Get_Item_Display_Name("AU_Magic_Berries","Item_Name","Magic Berries");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Magic_Berries","Menu_Name","Magic\n Berries");//name as it appears in menus
	item_icon = spr_AU_Item_Icons;
	frame_number = 40;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "Magic_Restore_Item";
	use_effect_level = 1;
	value = 50;
}