function Effect_Stats_Summon_Wolf(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Summon_Wolf","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Summon_Wolf","Menu_Name");//Get name from language script
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