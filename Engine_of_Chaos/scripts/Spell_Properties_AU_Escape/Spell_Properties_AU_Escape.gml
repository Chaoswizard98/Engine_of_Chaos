function Spell_Stats_AU_Escape(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("AU_Escape","Spell_Name","Escape");//Get name from language script
	menu_name = Get_Spell_Display_Name("AU_Escape","Menu_Name","Escape");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 7;
	use_in_town = true;
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1;
	max_target_range = 0;
	retreat_from_battle = true;
	magic_cost = 8;
}