function Start_Battle_Death_Cutscene(_event) {
	//returns the ID of the highest priority death script
	var _script_ID = "Battle_Death_Animation";
	if(_event = "End_Death_Animation"){
	    _script_ID = "Battle_Death_Animation_End";
	}

	var _highest_priority = -999;
	var _character = noone;
	with(obj_Character){//loop through all characters
	    if(death_flag){//if they are flagged for death
			Save_Character_Stats(id);//Save their stats before destruction
	        if(_event = "Start_Death_Animation"){
	            if((start_death_event != "none")&&(start_death_event_priority > _highest_priority)){
	                _script_ID = start_death_event;
	                _highest_priority = start_death_event_priority;
	                _character = id;
	            }
	        }
	        else{
	            if((end_death_event != "none")&&(end_death_event_priority > _highest_priority)){
	                _script_ID = end_death_event;
	                _highest_priority = end_death_event_priority;
	                _character = id;
	            }
	        }
	    }
	}
	Start_Cutscene(_script_ID,_character);
}