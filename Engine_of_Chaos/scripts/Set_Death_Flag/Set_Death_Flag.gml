function Set_Death_Flag(_character) {
	var _run_event = true;
	_character.death_flag = true;//character is dead

	with(obj_Character){
	    if(is_summon && !persistent_summon && (summoner = _character)){//if they're a summoned unit and this is their summoner
	        Set_Death_Flag(id);
	    }
	}

	//==========================
	//Victory / Fail Conditions=
	//==========================
	switch(_character.death_flag_script){
	    default: Important_Character_Died(_character); break;//check if they're an important character and if so, remember their name to the appropriate slot.
	}



	/*if(_character.death_causes_battle_victory){
	    obj_Battle_Controller.won_battle = true;
	}
	if(_character.death_causes_battle_loss){
	    obj_Battle_Controller.lost_battle = true;
	}*/

	//======================
	//Battle Specific Flags=
	//======================
	//switch(obj_Battle_Controller.battle_ID){
    
	//}

	//===================
	//Custom Death Flags=
	//===================
	switch(_character.death_flag_script){
		case "Trigger_Hidden_Units_Battle_01":
			if(Get_Enemies_Remaining("Player") = 2){//If this was the last enemy
				Force_Hidden_Unit_Reveal("AU_Wolf")//Reveal hidden units
				with(obj_Enemy_Spawner){//Turn spawner on
					spawn_criteria = "Next_Action";	
				}
				obj_Battle_Controller.battle_flags[2] = "Killed_Wolf";//Set flag (this in particular bypasses the "killed all enemies" victory condition temporarilly)
			}
		break;
		
	    case "Challenge_1_Flag_1":
	        with(obj_Character){
	            if((death_flag_script = "Challenge_1_Flag_1")&&(!death_flag)){
	                _run_event = false;
	            }
	        }
	        if(_run_event){
	            Force_Hidden_Unit_Reveal("Bandit");
	            Force_Hidden_Unit_Reveal("Bandit_Archer");
	        }
	    break;
	}
	//if(death_flag_script = 'x'){//if they have a custom script assigned,
	    //set custom flags here
	//}
	/*
	with(obj_Character){//loop through all characters
	    if(!death_flag){//if they arent already dying
	        if((summoner = _character)&&(!persist_on_summoner_death)){//if they were summoned by this character and dont persist,
	            Set_Death_Flag(id);//flag for death
	        }
	    }
	}*/



}
