function Spell_Stats_SF2_Blast(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Blast","Spell_Name","Blast");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Blast","Menu_Name","Blast");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 3;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(33,219,222);
	tint_color = make_color_rgb(33,219,222);
    
	switch(_effect_level){
	    case 1: wind_damage = 6; max_target_range = 1; area = 1; magic_cost = 2; break;
	    case 2: wind_damage = 8; max_target_range = 2; area = 2; magic_cost = 5; break;
	    case 3: wind_damage = 12; max_target_range = 2; area = 2; magic_cost = 8; break;
	    case 4: wind_damage = 30; max_target_range = 2; area = 1; magic_cost = 8; break;
	}
}