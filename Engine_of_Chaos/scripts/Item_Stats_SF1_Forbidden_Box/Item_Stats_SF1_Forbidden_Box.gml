function Item_Stats_SF1_Forbidden_Box(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF1_Forbidden_Box","Item_Name","Forbidden Box");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF1_Forbidden_Box","Menu_Name","Forbidden\n Box");//name as it appears in menus
	item_icon = spr_AU_Item_Icons;
	frame_number = 30;
	max_use_range = 0;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "All_Allies";
	use_effect = "SF1_Forbidden_Box";
	use_effect_level = 1;
            
	town_effect = "SF1_Forbidden_Box";
	value = 99999;
}