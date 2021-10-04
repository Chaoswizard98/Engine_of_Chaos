function Effect_Stats_Attack_Boost(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Attack_Boost","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Attack_Boost","Menu_Name");//Get name from language script
	battle_cutscene_event = "Attack_Boost";
	town_effect = "Town_Effect_Attack_Boost";
	target_other = true;
}