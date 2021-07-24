function Magic_Event() {
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
	            if(Get_Spell(lookup_type,character_list[start_index + index],0)= "none"){//if the character doesnt have any spells
	                Play_Sound(sfx_Error);
	            }
	            else{//character has magic, allow player to select one
	                Play_Sound(sfx_Menu_Select);
	                state = "Selecting_Spell";
	                character_selector_state = 0;//solid frame
	                item_selector = -1;//flash item selector
	                selected_character = character_list[start_index + index];//remember character
	            }
	        }
	    break;
	    //=================
	    //Choosing an item=
	    //=================
	    case "Selecting_Spell":
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
	            if(Get_Spell_Slot_Stats(lookup_type,character_list[start_index + index],item_index,-1,"Use_In_Town")){//if we can use it
	                state = "Selecting_Spell_Level";
	                Play_Sound(sfx_Menu_Select);
	                selected_item_slot = item_index;//remember item slot
	                selected_spell_level = Get_Spell_Level(lookup_type,character_list[start_index + index],selected_item_slot);
	            }
	            else{//cant drop important items, play error sound
	                Play_Sound(sfx_Error);
	            }
	        }
	    break;
    
	    case "Selecting_Spell_Level":
	        if(input_event = "Cancel_Button"){
	            input_event = "none";
	            state = "Selecting_Spell";
	            Play_Sound(sfx_Menu_Swish);
	            selected_item_slot = item_index;//remember item slot
	            selected_spell_level = Get_Spell_Level(lookup_type,character_list[start_index + index],selected_item_slot);
	        }
	        else{
	            input_event = "none";
	            state = "Selected_Spell_Level";
	            Play_Sound(sfx_Menu_Select);
	            pan_direction = "out";//pan the windows out
	            allow_interaction = false;//disable player interaction with this object
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	    break;
    
	    case "Selected_Spell_Level":
	        if(Get_Spell_Slot_Stats(lookup_type,character_list[start_index + index],item_index,selected_spell_level,"Target_Other")){
	            Create_Dialogue("none",Get_Voice("Cast_Spell"),Get_General_Messages("Member_List","Cast_Spell"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            state = "Choose_Target";
	        }
	        else{
	            //go to item use script, item use controller?
	            Create_Town_Effect_Controller(lookup_type,selected_character,selected_character,"Cast_Spell",id,selected_item_slot,selected_spell_level);//<character>, <target>, <action>, <current object>, <spell slot/item slot>, [spell level]
	            state = "Running_Use_Item_Script";
	        }
	    break;
    
	    //=================
	    //Selected an item=
	    //=================
    
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
	            input_event = "none";
	            pan_direction = "out";//pan the windows out
	            allow_interaction = false;//disable player interaction with this object
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	        else{
	                state = "Selected_Target_Character";
	                input_event = "none";
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
	        Create_Town_Effect_Controller(lookup_type,selected_character,character_list[start_index + index],"Cast_Spell",id,selected_item_slot,selected_spell_level);//<character>, <target>, <action>, <current object>, <spell slot/item slot>, [spell level]
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
