function Effect_Stats_Burst_Rock(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Burst_Rock","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Burst_Rock","Menu_Name");//Get name from language script
	target_type = "All";
	select_type = "All";
	void_damage = 10;
}