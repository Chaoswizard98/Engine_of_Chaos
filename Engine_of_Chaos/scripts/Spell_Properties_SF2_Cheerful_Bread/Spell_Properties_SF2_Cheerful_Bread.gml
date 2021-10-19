function Spell_Stats_SF2_Cheerful_Bread(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Cheerful_Bread","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Cheerful_Bread","Menu_Name");//Get name from language script
	battle_cutscene_event = "SF2_Cheerful_Bread";
	town_effect = "SF2_Cheerful_Bread";
	target_other = true;
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_SF2_Cheerful_Bread(_object){
	with(_object){
		state = "End";
		var _boost = irandom_range(2,4);
		var _message = (Get_Character_Name(lookup_type,target,"Total")+"'s maximum health was boosted by " + string(_boost));
		Set_Character_Max_Health(lookup_type,target,"Add",_boost);
		if(!Character_Is_Dead(lookup_type,target)){
	        Set_Character_Health(lookup_type,target,"Set",Get_Character_Max_Health(lookup_type,target,"Base"));
	    }
		Finalize_Town_Spell_Effect(_object,_message,true);
	}
}