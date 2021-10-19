function Item_Stats_SF2_Healing_Water(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Healing_Water","Item_Name","Healing Water");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Healing_Water","Menu_Name","Healing\n Water");//name as it appears in menus
	item_icon = spr_Item_Icons;
	frame_number = 20;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "Healing_Item";
	use_effect_level = 4;
	value = 400;
}