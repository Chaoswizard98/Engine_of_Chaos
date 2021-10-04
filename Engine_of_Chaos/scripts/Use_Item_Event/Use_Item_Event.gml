function Use_Item_Event() {
	switch(state){
	    //=====================
	    //Choosing a character=
	    //=====================
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
	            input_event = "none";
	            if(Get_Item(lookup_type,character_list[start_index + index],0)= "none"){//if the character doesnt have any items
	                Play_Sound(sfx_Error);
	            }
	            else{//character has items, allow player to select one
	                Play_Sound(sfx_Menu_Select);
	                state = "Selecting_Item";
	                character_selector_state = 0;//solid frame
	                item_selector = -1;//flash item selector
	                selected_character = character_list[start_index + index];//remember character
	            }
	        }
	    break;
	    //=================
	    //Choosing an item=
	    //=================
	    case "Selecting_Item":
	        if(input_event = "Cancel_Button"){
	            state = "Selecting_Character";
	            character_selector_state = -1;//flashing frame
	            item_index = 0;//reset item index
	            item_selector = 1;//flash item selector
	            input_event = "none";
	            Play_Sound(sfx_Menu_Swish);
	        }
	        else{
	            input_event = "none";
	            if(Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Town_Effect") != "none"){//if we can use it
	                state = "Selected_Item";
	                Play_Sound(sfx_Menu_Select);
	                pan_direction = "out";//pan the windows out
	                allow_interaction = false;//disable player interaction with this object
	                selected_item_slot = item_index;//remember item slot
	                if(portrait_controller != noone){
	                    Pan_Out_Portrait_Controller(portrait_controller,true);
	                }
	                play_pan_sound = true;
	            }
	            else{//cant drop important items, play error sound
	                Play_Sound(sfx_Error);//############Funnel anyways for 'but nothing happens' event?
	            }
	        }
	    break;
	    //=================
	    //Selected an item=
	    //=================
	    case "Selected_Item":
	        if(Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Target_Other")){
	            Create_Dialogue(noone,Get_Generic_Voice("Use_Item"),Get_General_Messages("Member_List","Use_Item",Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Item_Name")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            state = "Choose_Target";
	        }
	        else{
	            Create_Town_Effect_Controller(lookup_type,selected_character,selected_character,"Use_Item",id,selected_item_slot);//<character>, <target>, <action>, <current object>, <spell slot/item slot>, [spell level]
	            state = "Running_Use_Item_Script";
	        }
	    break;
    
	    case "Choose_Target":
	        pan_direction = "in";
	        portrait_controller.pan_direction = "in";
	        state = "Selecting_Target_Character";
	        character_selector_state = -1;//flashing frame
	        item_index = 0;//reset item index
	        item_selector = 1;//flash item selector
	        play_pan_sound = true;
	    break;
    
    
    
	    //=====================
	    //Choosing a character=
	    //=====================
	    case "Selecting_Target_Character":
	        if(input_event = "Cancel_Button"){//if we pressed the cancel button
	            state = "End_Loop";
	            Play_Sound(sfx_Menu_Select);
	            pan_direction = "out";//pan the windows out
	            input_event = "none";
	            allow_interaction = false;//disable player interaction with this object
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	        else{
	            input_event = "none";
	            state = "Selected_Target_Character";
	            Play_Sound(sfx_Menu_Select);
	            pan_direction = "out";//pan the windows out
	            allow_interaction = false;//disable player interaction with this object
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	    break;
    
	    case "Selected_Target_Character":
	        Create_Town_Effect_Controller(lookup_type,selected_character,character_list[start_index + index],"Use_Item",id,selected_item_slot);//<character>, <target>, <action>, <current object>, <spell slot/item slot>, [spell level]
	        state = "Running_Use_Item_Script";
	    break;
    
	    case "End_Loop":
	        pan_direction = "in";
	        portrait_controller.pan_direction = "in";
	        state = "Selecting_Character";
	        character_selector_state = -1;//flashing frame
	        item_index = 0;//reset item index
	        item_selector = 1;//flash item selector
	        play_pan_sound = true;
	    break;
    
	    case "Running_Use_Item_Script":
	        //go back to selecting character
	        var _portrait_ID;
	        _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	        Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
	        pan_direction = "in";
	        portrait_controller.pan_direction = "in";
	        state = "Selecting_Character";
	        character_selector_state = -1;//flashing frame
	        item_index = 0;//reset item index
	        item_selector = 1;//flash item selector
	        play_pan_sound = true;
	    break;
	    //=================
	    //Back out of menu=
	    //=================
	    case "Backed_Out"://backed out, return to previous menu
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	}
}