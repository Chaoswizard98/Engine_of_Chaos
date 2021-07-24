function New_Game_Menu_Event() {
	if(state = "Backed_Out"){//if we are backing out of this menu
	    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	    instance_destroy();//destroy this object
	}
	else if(state = "Selecting_Option"){//if we are selecting an option
	    if(input_event = "Select_Button"){
	        allow_interaction = false;
	        window_pan_direction = "out";
	        state = "Selected_Option";
	        play_pan_sound = true;
	        with(current_object){
	            if(state != "Waiting_For_Challenges"){
	                parent_event = "Selected_New_Save";
	                event_perform(ev_other,ev_user13);
	            }
	        }
	        Play_Sound(sfx_Menu_Select);
	        switch (arrow_position + start_index){//set the correct key
	            case 0: global.Save_Slot = 0; break;
	            case 1: global.Save_Slot = 1; break;
	            case 2: global.Save_Slot = 2; break;
	            case 3: global.Save_Slot = 3; break;
	        }
	    }
	    else if(input_event = "Cancel_Button"){
	        allow_interaction = false;
	        window_pan_direction = "out";
	        state = "Backed_Out";
	        play_pan_sound = true;
	    }
	}
	else if(state = "Selected_Option"){
	    with(current_object){
	        if(state = "Waiting_For_Challenges"){
	            parent_event = "Selected_New_Save";
	            event_perform(ev_other,ev_user13);
	        }
	    }
	    instance_destroy();
	}
	else if(state = "Waiting_For_Parent"){//return to option selection
	    if(parent_event = "Backed_Out_Of_Menu"){
	        window_pan_direction = "in";
	        play_pan_sound = true;
	        state = "Selecting_Option";
	    }
	}



}
