function Spell_Stats_AU_Summon_Wolf(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("AU_Summon_Wolf","Spell_Name","Summon Wolf");//Get name from language script
	menu_name = Get_Spell_Display_Name("AU_Summon_Wolf","Menu_Name","Summon");//Get name from language script
	spell_icon = spr_Spell_Icons;
	frame_number = 3;
	target_type = "Empty_Tile";
	select_type = "Empty_Tile";
	flash_color = make_color_rgb(33,219,222);
	tint_color = make_color_rgb(33,219,222);
	battle_cutscene_event = "Summon_Spell";
	damage_formula = "No_Damage";
	area = 1;
	summon_ID = "Wolf_Summon";
}