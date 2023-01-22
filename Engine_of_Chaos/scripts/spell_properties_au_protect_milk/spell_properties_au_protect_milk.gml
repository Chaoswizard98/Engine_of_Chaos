function Spell_Stats_AU_Protect_Milk(_effect_level,_lookup_type,_character){
	//================
	//Set Spell Stats=
	//================
	spell_name = Get_Spell_Display_Name("AU_Protect_Milk","Spell_Name");//Get name from language script
	menu_name = Get_Spell_Display_Name("AU_Protect_Milk","Menu_Name");//Get name from language script
	
	battle_cutscene_event = "AU_Protect_Milk";
	town_effect = "AU_Protect_Milk";
	target_other = true;
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_AU_Protect_Milk(_object){
	with(_object){
		state = "End";
		var _boost = 2;
		var _message = (Get_Character_Name(lookup_type,target,"Total")+"'s defense was boosted by " + string(_boost));
		Set_Character_Defense(lookup_type,target,"Add",_boost);
		Finalize_Town_Spell_Effect(_object,_message,true);
	}
}


//Battle Cutscene Event Overrides
function AU_Protect_Milk_Battle_Cutscene_Event() {
	switch(state){
	    case "Hit_Animation":
	        var _target = Get_Battle_Cutscene_Character(target);
	        var _message = "";
	        var _boost = 2;
	        if(_target.on_screen){//if target is on screen
	            if(waiting_for_projectile){//if we're waiting for a projectile
	                Run_Projectile_Event();//activate projectile
	            }
	            else if(waiting_for_spell){//if we're waiting for a spell
	                Run_Spell_Event();//activate spell
	            }
	            else{//all caught up, continue with event
	                state = "Continue_Attack_Loop";
	                Play_Sound(sfx_Level_Up);
	                _message = Get_Character_Name("Local",target,"Total")+"'s attack was boosted by " + string(_boost);
	                target.defense += _boost;
	                Create_Dialogue(noone,noone,_message,id,false,true,dialogue_end_delay,auto_skip_dialogue);
	                Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	            }
	        }
	        else{
	            Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	            Pan_Battle_Cutscene("To_Target");
	        }
	    break;
	    default: Default_Battle_Cutscene_Event(); break;
	}
}