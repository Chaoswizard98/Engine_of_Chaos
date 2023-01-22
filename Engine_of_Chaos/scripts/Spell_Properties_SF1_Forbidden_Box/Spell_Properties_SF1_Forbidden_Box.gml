function Spell_Stats_SF1_Forbidden_Box(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("SF1_Forbidden_Box","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("SF1_Forbidden_Box","Menu_Name");//Get name from language script
	town_effect = "SF1_Forbidden_Box";
	battle_cutscene_event = "SF1_Forbidden_Box";
	target_other = false;
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_SF1_Forbidden_Box(_object){
	with(_object){
		state = "End";
		var _message = "Everyone has unlocked their full potential.";
		var _faction = Get_Character_Faction(lookup_type,target,"Total");
		
		if(lookup_type = "Global"){
	        for(i = 0; i< global.Number_Of_Characters; i+=1){//loop through all characters
	            if(global.Faction[i] = _faction){//if character is a member of the faction we're displaying
	                while(Get_Character_Level(lookup_type,i,"Derived") < Get_Character_Level_Scheme_Stats(lookup_type,i,"Max_Level","Base",1)){
	                    Level_Up(lookup_type,i,false);
	                }
	                Set_Character_Health(lookup_type,i,"Set",Get_Character_Max_Health(lookup_type,i,"Base"));
	                Set_Character_Magic(lookup_type,i,"Set",Get_Character_Max_Magic(lookup_type,i,"Base"));
	            }
	        }
	    }
	    else if(lookup_type = "Local"){
	        with(obj_Character){
	            if(faction = _faction){
	                while(Get_Character_Level(lookup_type,id,"Derived") < Get_Character_Level_Scheme_Stats(lookup_type,id,"Max_Level","Base",1)){
	                    Level_Up(lookup_type,id,false);
	                }
	                Set_Character_Health(lookup_type,id,"Set",Get_Character_Max_Health(lookup_type,id,"Base"));
	                Set_Character_Magic(lookup_type,id,"Set",Get_Character_Max_Magic(lookup_type,id,"Base"));
	            }
	        }
	    }
			
		Finalize_Town_Spell_Effect(_object,_message,true);
	}
}