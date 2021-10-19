function Spell_Stats_SF2_Freeze(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Freeze","Spell_Name","Freeze");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Freeze","Menu_Name","Freeze");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 1;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(181,219,255);
	tint_color = make_color_rgb(181,232,255);
    
	switch(_effect_level){
	    case 1: ice_damage = 10; max_target_range = 2; area = 1; magic_cost = 3; break;
	    case 2: ice_damage = 12; max_target_range = 2; area = 2; magic_cost = 7; break;
	    case 3: ice_damage = 18; max_target_range = 3; area = 2; magic_cost = 12; break;
	    case 4: ice_damage = 50; max_target_range = 3; area = 1; magic_cost = 12; break;
	}
}