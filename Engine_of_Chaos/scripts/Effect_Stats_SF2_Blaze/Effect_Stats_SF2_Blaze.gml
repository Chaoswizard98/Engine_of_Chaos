function Effect_Stats_SF2_Blaze(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Blaze","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Blaze","Menu_Name");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 0;
	target_type = "Enemy";
	select_type = "Enemy";
	flash_color = make_color_rgb(255,0,0);
	tint_color = make_colour_rgb(255,106,106);
    
	switch(_effect_level){
	    case 1: fire_damage = 8; max_target_range = 2; area = 1; magic_cost = 2; break;
	    case 2: fire_damage = 10; max_target_range = 2; area = 2; magic_cost = 6; break;
	    case 3: fire_damage = 15; max_target_range = 2; area = 2; magic_cost = 10; break;
	    case 4: fire_damage = 40; max_target_range = 2; area = 1; magic_cost = 10; break;
	}
}