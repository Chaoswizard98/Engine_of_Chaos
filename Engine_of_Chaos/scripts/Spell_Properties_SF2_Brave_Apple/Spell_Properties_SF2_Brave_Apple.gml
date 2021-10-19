function Spell_Stats_SF2_Brave_Apple(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF2_Brave_Apple","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF2_Brave_Apple","Menu_Name");//Get name from language script
	town_effect = "SF2_Brave_Apple";
	battle_cutscene_event = "SF2_Brave_Apple";
	target_other = true;
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_SF2_Brave_Apple(_object){
	with(_object){
		state = "End";
		var _valid_effect = true;
		var _message = Level_Up(lookup_type,target,false);
		if(!Character_Is_Dead(lookup_type,target)){
	        Set_Character_Health(lookup_type,target,"Set",Get_Character_Max_Health(lookup_type,target,"Base"));
	    }
	    Set_Character_Magic(lookup_type,target,"Set",Get_Character_Max_Magic(lookup_type,target,"Base"));
		
		if(_message = ""){
	        _valid_effect = false;
	        _message = "But nothing happens.";
	    }
			
		Finalize_Town_Spell_Effect(_object,_message,_valid_effect);
	}
}