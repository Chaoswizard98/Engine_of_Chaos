function Effect_Stats_Recall(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Recall","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Recall","Menu_Name");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 7;
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1;
	max_target_range = 0;
	end_summon = true;
}