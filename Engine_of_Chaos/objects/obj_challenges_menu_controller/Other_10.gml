
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
	        Play_Sound(sfx_Menu_Select);
	    }
	    else if(input_event = "Cancel_Button"){
	        allow_interaction = false;
	        window_pan_direction = "out";
	        state = "Backed_Out";
	        play_pan_sound = true;
	    }
	}
	else if(state = "Selected_Option"){
	    state = "Waiting_For_Parent";
		Room_Transfer("AU_Jason","Force",menu_room[arrow_position + start_index],"Egress");
	}
