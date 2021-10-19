function Spell_Stats_Magic_Restore_Item(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Magic_Restore_Item","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Magic_Restore_Item","Menu_Name");//Get name from language script
	damage_formula = "No_Damage";
	switch(_effect_level){
	    case 1: magic_restored = 10; break;
	    case 2: magic_restored = 20; break;
	    case 3: magic_restored = 30; break;
	    case 4: magic_restored = 999; break;
	}
}