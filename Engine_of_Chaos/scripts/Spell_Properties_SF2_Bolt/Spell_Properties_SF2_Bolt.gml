function Spell_Stats_SF2_Bolt(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Bolt","Spell_Name","Bolt");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Bolt","Menu_Name","Bolt");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 2;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(181,219,255);
	tint_color = make_color_rgb(181,232,255);
    
	switch(_effect_level){
	    case 1: lightning_damage = 6; max_target_range = 2; area = 2; magic_cost = 8; break;
	    case 2: lightning_damage = 10; max_target_range = 3; area = 3; magic_cost = 15; break;
	    case 3: lightning_damage = 15; max_target_range = 3; area = 3; magic_cost = 20; break;
	    case 4: lightning_damage = 40; max_target_range = 3; area = 1; magic_cost = 20; break;
	}
}