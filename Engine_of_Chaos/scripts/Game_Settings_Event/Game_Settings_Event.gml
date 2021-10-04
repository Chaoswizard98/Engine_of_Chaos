function Game_Settings_Event() {
	if(state = "Backed_Out"){//if we are backing out of this menu
	    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	    instance_destroy();//destroy this object
	}
	else if(state = "Selecting_Option"){//if we are selecting a control to change
	    if(input_event = "Select_Button"){
	        state = "Mapping";
	        switch (arrow_position + start_index){//set the correct key
	            case 0: Reset_Game_Settings(); state = "Selecting_Option"; Update_Game_Settings_Array(); Update_Music_Volume(); Save_Config(); break;
	            case 1: old_setting = global.Dialogue_Speed; break;
	            case 2: old_setting = global.Perma_Death; break;
	            case 3: old_setting = global.Sound_Volume; break;
	            case 4: old_setting = global.Music_Volume; break;
	        }
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
	    if((input_event = "Up_Button")||(input_event = "Right_Button")){
	        switch (arrow_position + start_index){//set the correct key
	            case 0: break;
	            case 1: Increase_Dialogue_Speed(); Play_Sound(sfx_Menu_Move); break;//Dialogue Speed Control
	            case 2: Toggle_Perma_Death(); Play_Sound(sfx_Menu_Move); break;//Perma-death
	            case 3: Increase_Sound_Volume(); Play_Sound(sfx_Menu_Move); break;//SFX Control
	            case 4: Increase_Music_Volume(); Play_Sound(sfx_Menu_Move); break;//BGM Control
	        }
	        Update_Game_Settings_Array();
	    }
	    else if((input_event = "Down_Button")||(input_event = "Left_Button")){
	        switch (arrow_position + start_index){//set the correct key
	            case 0: break;
	            case 1: Decrease_Dialogue_Speed(); Play_Sound(sfx_Menu_Move); break;//Dialogue Speed Control
	            case 2: Toggle_Perma_Death(); Play_Sound(sfx_Menu_Move); break;//Perma-death
	            case 3: Decrease_Sound_Volume(); Play_Sound(sfx_Menu_Move); break;//SFX Control
	            case 4: Decrease_Music_Volume(); Play_Sound(sfx_Menu_Move); break;//BGM Control
	        }
	        Update_Game_Settings_Array();
	    }
	    else if(input_event = "Select_Button"){
	        Play_Sound(sfx_Menu_Select);
	        Update_Game_Settings_Array();
	        Save_Config();
	        state = "Selecting_Option";
	    }
	    else if(input_event = "Cancel_Button"){
	        switch (arrow_position + start_index){//set the correct key
	            case 1: global.Dialogue_Speed = old_setting; break;
	            case 2: global.Perma_Death = old_setting; break;
	            case 3: global.Sound_Volume = old_setting; break;
	            case 4: global.Music_Volume = old_setting; Update_Music_Volume(); break;
	        }
	        Update_Game_Settings_Array();
	        state = "Selecting_Option";
	        Play_Sound(sfx_Menu_Swish);
	    }
	}
}