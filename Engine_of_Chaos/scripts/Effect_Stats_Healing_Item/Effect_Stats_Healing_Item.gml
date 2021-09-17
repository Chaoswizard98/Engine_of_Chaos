function Effect_Stats_Healing_Item(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Healing_Item","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Healing_Item","Menu_Name");//Get name from language script
	target_type = "Ally";
	select_type = "Ally";
	min_target_range = -1; 
	cure_bleed = true;
        
	switch(_effect_level){
	    case 1: heal_ammount = 10; break;
	    case 2: heal_ammount = 20; break;
	    case 3: heal_ammount = 30; break;
	    case 4: heal_ammount = 999; break;
	}
}