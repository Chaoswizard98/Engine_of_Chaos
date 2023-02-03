function Item_Stats_SF2_Antidote(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Antidote","Item_Name","Antidote");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Antidote","Menu_Name","Antidote");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 3;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	target_other = true;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "SF2_Antidote";
	use_effect_level = 1;
	town_effect = "SF2_Antidote";
	value = 20;
}