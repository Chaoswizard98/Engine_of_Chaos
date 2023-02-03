function Item_Stats_AU_Power_Wine(_lookup_type,_character){
	item_name = Get_Item_Display_Name("AU_Power_Wine","Item_Name","Power Wine");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Power_Wine","Menu_Name","Power\n Wine");//name as it appears in menus
	item_icon = spr_AU_Item_Icons;
	frame_number = 31;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "AU_Power_Wine";
	use_effect_level = 1;
            
	target_other = true;
	town_effect = "AU_Power_Wine";
	value = 500;
}