function Summon_Spell_Battle_Cutscene_Event() {
	switch(state){
	    //==============
	    //Hit Animation=
	    //==============
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
	                var _criteria = 0;
	                var _delay = 10;
	                state = "End_Hit_Animation";
	                Play_Sound(sfx_Level_Up);
	                Play_Battle_Animation(_target,"Appear",true,false,true);
	                _criteria += 1;
	                Set_Battle_Cutscene_Event_Criteria(_criteria,_delay);//counter,delay
	            }
	        }
	        else{
	            _target.alpha = 0;
	            Set_Battle_Cutscene_Event_Criteria(1,10);//counter,delay
	            Pan_Battle_Cutscene("To_Target");
	        }
	    break;
	    //==================
	    //End Hit Animation=
	    //==================
	    case "End_Hit_Animation":
	        var _target = Get_Battle_Cutscene_Character(target);
	        var _message = "";
	        var _criteria = 0;
	        var _delay = 0;
	        state = "Continue_Attack_Loop";
    
	        var _target_name = Get_Character_Name("Local",target,"Total");
	        _message = Get_General_Messages("Battle_Cutscene","Summoned_Creature", _target_name);

	        Create_Dialogue(noone,noone,_message,id,false,true,dialogue_end_delay,auto_skip_dialogue);
	        _criteria += 1;
    
	        Set_Battle_Cutscene_Event_Criteria(_criteria,_delay);//counter,delay
	    break;
    
    
    
	    default: Default_Battle_Cutscene_Event(); break;
	}



}
