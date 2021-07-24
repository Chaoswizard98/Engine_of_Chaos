function Join_Battle_Party_Event() {
	switch(state){
	    //=================
	    //Back out of menu=
	    //=================
	    case "Backed_Out"://backed out, return to previous menu
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
    
	    //======================
	    //selecting a character=
	    //======================
	    case "Selecting_Character":
	        if(input_event = "Cancel_Button"){//if we pressed the cancel button
	            pan_direction = "out";
	            allow_interaction = false;
	            state = "Backed_Out";
	            input_event = "none";
	            if(portrait_controller != noone){
	                portrait_controller.pan_direction = "out";
	            }
	            play_pan_sound = true;
	        }
	        else{
	            pan_direction = "out";//pan the windows out
	            allow_interaction = false;//disable player interaction with this object
	            state = "Selected_Character";//we selected a character
	            input_event = "none";
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	    break;
	    //===================
	    //Selected character=
	    //===================
	    case "Selected_Character":
	        current_object.joining_character = character_list[start_index + index];
	        with(current_object){
	            parent_event = "none";
	            event_perform(ev_other,ev_user0);
	        }
	        with(portrait_controller){
	            instance_destroy();
	        }
	        instance_destroy();
	    break;
	}



}
