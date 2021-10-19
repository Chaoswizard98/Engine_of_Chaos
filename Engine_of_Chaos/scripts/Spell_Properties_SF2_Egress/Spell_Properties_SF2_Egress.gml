function Spell_Stats_SF2_Egress(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Egress","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Egress","Menu_Name");//Get name from language script
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