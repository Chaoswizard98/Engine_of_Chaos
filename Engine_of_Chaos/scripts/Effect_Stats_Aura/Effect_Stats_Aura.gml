function Effect_Stats_Aura(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Aura","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Aura","Menu_Name");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 6;
	target_type = "Ally";
	select_type = "All_Allies";
	min_target_range = -1; 
	flash_color = make_color_rgb(222,182,222);
	cure_bleed = true;
        
	switch(_effect_level){
	    case 1: heal_ammount = 15; max_target_range = 3; area = 2;  magic_cost = 7; break;
	    case 2: heal_ammount = 15; max_target_range = 3; area = 3;  magic_cost = 11; break;
	    case 3: heal_ammount = 30; max_target_range = 3; area = 3;  magic_cost = 15; break;
	    case 4: heal_ammount = 999; max_target_range = 0; area = 1;  magic_cost = 20; break;
	}
}