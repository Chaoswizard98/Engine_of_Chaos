function Item_Stats_SF2_Quick_Chicken(_lookup_type,_character){
	item_name = Get_Item_Display_Name("SF2_Quick_Chicken","Item_Name","Quick Chicken");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("SF2_Quick_Chicken","Menu_Name","Quick\n Chicken");//name as it appears in menus
	item_icon = spr_SF2_Item_Icons;
	frame_number = 11;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "SF2_Quick_Chicken";
	use_effect_level = 1;
            
	target_other = true;
	town_effect = "SF2_Quick_Chicken";
	value = 500;
}