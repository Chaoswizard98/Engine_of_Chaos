function Forbidden_Box_Battle_Cutscene_Event() {
	switch(state){
	    case "Hit_Animation":
	        var _target = Get_Battle_Cutscene_Character(target);
	        if(_target.on_screen){//if target is on screen
	            if(waiting_for_projectile){//if we're waiting for a projectile
	                Run_Projectile_Event();//activate projectile
	            }
	            else if(waiting_for_spell){//if we're waiting for a spell
	                Run_Spell_Event();//activate spell
	            }
	            else{//all caught up, continue with event
	                state = "Continue_Attack_Loop";
	                if(target.can_gain_xp){
	                    Play_Sound(sfx_Level_Up);
	                    while(Get_Character_Level("Local",target,"Derived") < Get_Character_Level_Scheme_Stats("Local",target,"Max_Level","Base",1)){
	                        Level_Up("Local",target,false);
	                    }
	                    Create_Dialogue(noone,noone,Get_Character_Name("Local",target,"Total")+"'s full potential has been unlocked.",id,false,true,dialogue_end_delay,auto_skip_dialogue);
	                    Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	                }
	                else{
	                    Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Spell_Has_No_Effect",Get_Character_Name("Local",target,"Total")),id,false,true);
	                    Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	                }
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
