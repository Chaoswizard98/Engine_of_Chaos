function Item_Stats_SF2_Cheerful_Bread(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Cheerful_Bread","Item_Name","Cheerful Bread");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Cheerful_Bread","Menu_Name","Cheerful\n Bread");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 13;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "SF2_Cheerful_Bread";
	use_effect_level = 1;
	target_other = true;
	town_effect = "SF2_Cheerful_Bread";
	value = 500;
}