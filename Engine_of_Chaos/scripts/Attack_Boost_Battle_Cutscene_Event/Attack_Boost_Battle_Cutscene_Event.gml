function Attack_Boost_Battle_Cutscene_Event() {
	switch(state){
	    case "Hit_Animation":
	        var _target = Get_Battle_Cutscene_Character(target);
	        var _message = "";
	        var _boost = irandom_range(2,4);
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
	                target.attack += _boost;
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
