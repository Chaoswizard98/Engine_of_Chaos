function Global_Cutscene_Move_Script() {
	switch(custom_move_script){
	    case "Overworld_Room_Transition": //not actually a cutscene. Restores player movement after room transition
	        allow_interaction = true;
	        custom_move_script = "none";
	        with(obj_Character){
	            cutscene_mode = false;
	        }
	        obj_Camera.persistent = false;
	        obj_Camera.halt_x_movement = false;
	        obj_Camera.halt_y_movement = false;
	    break;
    
	    case "Jason_Movement_01"://Custom script for moving in parallel with max during
	        Jason_Movement_01();//meeting ciera cutscene
	    break;
    
	    default: //default call cutscene (or reset move code if we dont)
	        if(call_cutscene){
	            with(obj_Cutscene_Controller){
	                event_perform(ev_other,ev_user0);
	            }
	        }
	        else{
	            call_cutscene = true;
	        }
	    break;
	}





}
