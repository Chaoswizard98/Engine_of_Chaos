function Burst_Rock_Battle_Cutscene_Event() {
	switch(state){
	    case "End_Start_Pan":
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        _attacker.attacks_performed += 1;
	        _attacker.played_death_event = true;
	        state = "Perform_Animation";
        
	        //Create Dialogue
	        Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Burst_Rock_Exploded"),id,false,true,dialogue_end_delay,auto_skip_dialogue);
	    break;
	    case "End_Animation":
	        Set_Character_Health("Local",attacker,"Set",0);//burst rock dies
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        _attacker.alpha = 0;
			var _direction = "Left";//direction to launch projectile / spell
			if(_attacker.position = "Left"){//get projectile direction
		        _direction = "Right";
		    }
			state = "Hit_Animation";
			
			if(attacker = target){
				state = "Continue_Attack_Loop";
				if(number_of_targets = 1){
					state = "No_Valid_Targets";//skip all other events
				}
			}
			
		    if(number_of_targets = 0){//if no targets exist
		        state = "No_Valid_Targets";//skip all other events
		    }
			
			Create_Spell_Controller("Start_Spell_Flash",effect,effect_level,_direction);
	    break;
	    default: Default_Battle_Cutscene_Event(); break;
	}



}
