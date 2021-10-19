function Spell_Stats_AU_Recall(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("AU_Recall","Spell_Name","Recall");//Get name from language script
	menu_name = Get_Spell_Display_Name("AU_Recall","Menu_Name","Recall");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 7;
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1;
	max_target_range = 0;
	end_summon = true;
}