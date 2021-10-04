function Control_Config_Event() {
	if(state = "Backed_Out"){//if we are backing out of this menu
	    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	    instance_destroy();//destroy this object
	}
	else if(state = "Selecting_Option"){//if we are selecting a control to change
	    if(input_event = "Select_Button"){
	        state = "Mapping";
	        Play_Sound(sfx_Menu_Select);
	    }
	    else if(input_event = "Cancel_Button"){
	        allow_interaction = false;
	        window_pan_direction = "out";
	        state = "Backed_Out";
	        play_pan_sound = true;
	    }
	}
	else if(state = "Mapping"){//If we're setting a new control
	    switch (arrow_position + start_index){//set the correct key
	        case 0: Swap_Duplicate_Controls("Up"); global.Up_Button = keyboard_lastkey; break; //set up button to new key
	        case 1: Swap_Duplicate_Controls("Down"); global.Down_Button = keyboard_lastkey; break; //set down button to new key
	        case 2: Swap_Duplicate_Controls("Left"); global.Left_Button = keyboard_lastkey; break; //set left button to new key
	        case 3: Swap_Duplicate_Controls("Right"); global.Right_Button = keyboard_lastkey; break; //set right button to new key
	        case 4: Swap_Duplicate_Controls("Select"); global.Select_Button = keyboard_lastkey; break; //set select button to new key
	        case 5: Swap_Duplicate_Controls("Cancel"); global.Cancel_Button = keyboard_lastkey; break; //set cancel button to new key
	        case 6: Swap_Duplicate_Controls("Inspect"); global.Inspect_Button = keyboard_lastkey; break; //set inspect button to new key
	        case 7: Swap_Duplicate_Controls("Main Menu"); global.Main_Menu_Button = keyboard_lastkey; break; //set main menu button to new key
	    }
	    Update_Control_Array();//Update the array with current controls
	    state = "Selecting_Option";//return to previous state
	    Play_Sound(sfx_Menu_Swish);//play confirmation sound
	    Save_Config();
	}
}