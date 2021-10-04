function Options_Menu_Event() {
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
	    switch (arrow_position + start_index){//set the correct key
	        case 0: Create_Control_Config_Menu(id); break;
	        case 1: Create_Game_Settings_Menu(id); break;
	        case 2: Create_Cheats_Menu(id); break;
	    }
	}
	else if(state = "Waiting_For_Parent"){//return to option selection
	    if(parent_event = "Backed_Out_Of_Menu"){
	        window_pan_direction = "in";
	        play_pan_sound = true;
	        state = "Selecting_Option";
	    }
	}
}