function Effect_Stats_Detox(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Detox","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Detox","Menu_Name");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 5;
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1; 
	flash_color = make_color_rgb(222,182,222);
	cure_poison = true;
	damage_formula = "No_Damage";
	town_effect = "Detox";
	target_other = true;
        
	switch(_effect_level){
	    case 1: max_target_range = 1; area = 1; magic_cost = 3; break;
	    case 2: cure_stun = true; max_target_range = 2; area = 1; magic_cost = 6; break;
	    case 3: cure_stun = true; cure_curse = true; max_target_range = 2; area = 1; magic_cost = 10; break;
	    case 4: cure_stun = true; cure_curse = true; max_target_range = 3; area = 3; magic_cost = 16; break;
	}
}