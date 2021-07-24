function Set_Battle_Cutscene_Event_Criteria() {
	var _max_counter = argument[0];
	var _event_timer = argument[1];

	with(obj_Battle_Cutscene_Controller){
	    max_counter = _max_counter;
	    event_timer = _event_timer;
	    counter = 0;
	    waiting_for_state = true;
    
	    if(_max_counter <= 0){//if no criteria, skip to loop
	        timer = true;
	        waiting_for_state = false;
	    }
	}




}
