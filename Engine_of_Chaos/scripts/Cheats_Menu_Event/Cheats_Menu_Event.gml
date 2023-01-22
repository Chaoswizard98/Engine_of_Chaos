function Cheats_Menu_Event() {
	if(state = "Backed_Out"){//if we are backing out of this menu
	    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	    instance_destroy();//destroy this object
	}
	else if(state = "Selecting_Option"){//if we are selecting a control to change
	    if(input_event = "Select_Button"){
	        switch (arrow_position + start_index){//set the correct key
	            case 0: old_setting = global.Control_All_Units; break;
	            case 1: old_setting = global.Unlimited_Gold; break;
	            case 2: old_setting = global.Buy_All_Items; break;
	            case 3: old_setting = global.Invincibility; break;
	            case 4: old_setting = global.Infinite_Magic; break;
	            case 5: old_setting = global.Infinite_Item_Use; break;
				case 6: old_setting = global.Infinite_Movement; break;
	        }
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
	    if((input_event = "Up_Button")||(input_event = "Right_Button")||(input_event = "Down_Button")||(input_event = "Left_Button")){
	        switch (arrow_position + start_index){//set the correct key
	            case 0: Toggle_Cheat_Control_All_Units(); break;//control all units
	            case 1: Toggle_Cheat_Unlimited_Gold(); break;//unlimited gold
	            case 2: Toggle_Cheat_Buy_All_Items(); break;//buy all items
	            case 3: Toggle_Cheat_Infinite_Health(); break;//infinite health
	            case 4: Toggle_Cheat_Infinite_Magic(); break;//infinite magic
	            case 5: Toggle_Cheat_Infinite_Item_Use(); break;//infinite item use
				case 6: Toggle_Cheat_Unlimited_Movement(); break;//infinite item use
	        }
	        Play_Sound(sfx_Menu_Move); 
	        Update_Cheats_Array();
	    }
	    else if(input_event = "Select_Button"){
	        Play_Sound(sfx_Menu_Select);
	        Update_Cheats_Array();
	        state = "Selecting_Option";
	    }
	    else if(input_event = "Cancel_Button"){
	        switch (arrow_position + start_index){//set the correct key
	            case 0: global.Control_All_Units = old_setting; break;
	            case 1: global.Unlimited_Gold = old_setting; break;
	            case 2: global.Buy_All_Items = old_setting; break;
	            case 3: global.Invincibility = old_setting; break;
	            case 4: global.Infinite_Magic = old_setting; break;
	            case 5: global.Infinite_Item_Use = old_setting; break;
				case 6: global.Infinite_Movement = old_setting; break;
	        }
	        state = "Selecting_Option";
	        Play_Sound(sfx_Menu_Swish); 
	        Update_Cheats_Array();
	    }
	}
}