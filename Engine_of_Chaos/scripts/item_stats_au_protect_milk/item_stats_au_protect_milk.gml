function Item_Stats_AU_Protect_Milk(_lookup_type,_character){
	item_name = Get_Item_Display_Name("AU_Protect_Milk","Item_Name","Protect Milk");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Protect_Milk","Menu_Name","Protect\n Milk");//name as it appears in menus
	item_icon = spr_AU_Item_Icons;
	frame_number = 32;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "AU_Protect_Milk";
	use_effect_level = 1;
            
	target_other = true;
	town_effect = "AU_Protect_Milk";
	value = 500;
}