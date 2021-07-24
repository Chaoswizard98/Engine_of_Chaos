function Battle_Death_Animation() {
	//var _character;// = player_trigger;
	switch(state){
	    case 0:
	        state += 1;
	        with(obj_Character){//loop through all characters
	            if(death_flag){//if they are dead (HP = 0)
	                obj_Cutscene_Controller.max_counter += 1;//remember the number of characters we're killing
	                Play_Death_Animation(id);
	                cutscene_mode = true;
	            }
	        }
	    break;
	    case 1:
	        counter += 1;//a character has finished exploding. Update the counter
	        if(counter >= max_counter){//wait for all characters to end their animation event
	            state += 1;
	            Execute_Battle_Event("End_Death_Animation");
	            instance_destroy();
	        }
	    break;
	}



}
