function Item_Stats_SF2_Power_Wine(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Power_Wine","Item_Name","Power Wine");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Power_Wine","Menu_Name","Power\n Wine");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 9;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "SF2_Power_Wine";
	use_effect_level = 1;
            
	target_other = true;
	town_effect = "SF2_Power_Wine";
	value = 500;
}