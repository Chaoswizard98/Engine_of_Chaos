function Effect_Stats_Detox_Item(){
	var _effect_level = argument[0];//level of effect
	var _lookup_type = argument[1];//Lookup type for character stats (if provided)
	var _character = argument[2];//Character (if provided)


	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("Detox_Item","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("Detox_Item","Menu_Name");//Get name from language script
	cure_poison = true;
	damage_formula = "No_Damage";
	town_effect = "Town_Effect_Detox";
	target_other = true;
	switch(_effect_level){
	    case 2: 
	        cure_stun = true; 
	    break;
	    case 3: 
	        cure_paralysis = true;
	        cure_sleep = true;
	        cure_petrify = true;
	        cure_snare = true;
	        cure_confusion = true;
	        cure_berserk = true;
	        cure_stun = true;
	        cure_curse = false;
	    break;
	    case 4:
	        cure_paralysis = true;
	        cure_sleep = true;
	        cure_petrify = true;
	        cure_snare = true;
	        cure_confusion = true;
	        cure_berserk = true;
	        cure_stun = true;
	        cure_curse = true;
	    break;
	}
}