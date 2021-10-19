function Spell_Stats_SF2_Protect_Milk(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Protect_Milk","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Protect_Milk","Menu_Name");//Get name from language script
	
	battle_cutscene_event = "SF2_Protect_Milk";
	town_effect = "SF2_Protect_Milk";
	target_other = true;
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_SF2_Protect_Milk(_object){
	with(_object){
		state = "End";
		var _boost = irandom_range(2,4);
		var _message = (Get_Character_Name(lookup_type,target,"Total")+"'s defense was boosted by " + string(_boost));
		Set_Character_Defense(lookup_type,target,"Add",_boost);
		Finalize_Town_Spell_Effect(_object,_message,true);
	}
}