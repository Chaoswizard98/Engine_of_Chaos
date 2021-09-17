function Effect_Stats_SF2_Blast(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Blast","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Blast","Menu_Name");//Get name from language script
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