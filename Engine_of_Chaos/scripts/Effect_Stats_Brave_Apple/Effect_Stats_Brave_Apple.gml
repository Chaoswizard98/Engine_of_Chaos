function Effect_Stats_Brave_Apple(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Brave_Apple","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Brave_Apple","Menu_Name");//Get name from language script
	town_effect = "Town_Effect_Brave_Apple";
	target_other = true;
	switch(_effect_level){
	    case 1: battle_cutscene_event = "Brave_Apple"; break;
	    case 2: battle_cutscene_event = "Brave_Apple"; break;
	    case 3: battle_cutscene_event = "Brave_Apple"; break;
	    case 4: battle_cutscene_event = "Forbidden_Box"; town_effect = "Town_Effect_Forbidden_Box"; target_other = false; break;
	}
}