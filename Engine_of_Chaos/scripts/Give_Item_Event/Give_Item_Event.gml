function Give_Item_Event() {
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
	            if(!Character_Is_Cursed_By_This_Item(lookup_type,selected_character,item_index)){//if we arent dropping an equipped cursed item
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
	            else{//prevent giving equipped cursed item
	                state = "Prevent_Curse_Give";
	                Play_Sound(sfx_Menu_Select);
	                pan_direction = "out";//pan the windows out
	                allow_interaction = false;//disable player interaction with this object
	                selected_item_slot = item_index;//remember item slot
	                if(portrait_controller != noone){
	                    Pan_Out_Portrait_Controller(portrait_controller,true);
	                }
	                play_pan_sound = true;
	            }
	        }
	    break;
    
    
	    case "Prevent_Curse_Give":
	        Create_Dialogue(noone,Get_Generic_Voice("Give_Item"),Get_General_Messages("Member_List","Cancel_Give_Cursed",Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Item_Name")),id,false,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
	        state = "End_Loop";
	    break;
    
	    //==========================
	    //Choosing an item to trade=
	    //==========================
	    case "Selecting_Trade_Item":
	        if(input_event = "Cancel_Button"){
	            state = "Selecting_Target_Character";
	            character_selector_state = -1;//flashing frame
	            item_index = 0;//reset item index
	            item_selector = 1;//flash item selector
	            input_event = "none";
	            Play_Sound(sfx_Menu_Swish);
	        }
	        else{
	            input_event = "none";
	            state = "Selected_Trade_Item";
	            Play_Sound(sfx_Menu_Select);
	            pan_direction = "out";//pan the windows out
	            allow_interaction = false;//disable player interaction with this object
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	    break;
	    //=================
	    //Selected an item=
	    //=================
	    case "Selected_Item":
	        Create_Dialogue(noone,Get_Generic_Voice("Give_Item"),Get_General_Messages("Member_List","Give_To_Whom?",Get_Inventory_Item_Stats(lookup_type,selected_character,selected_item_slot,"Item_Name")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state = "Choose_Target";
	    break;
    
	    //===================
	    //Create Yes/No menu=
	    //===================
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
	            allow_interaction = false;//disable player interaction with this object
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	        else{
	            input_event = "none";
	            if(character_list[start_index + index] = selected_character){//if we give an item to ourself
	                selected_item = Get_Item(lookup_type,selected_character,selected_item_slot);//remember item
	                Remove_Item(lookup_type,selected_character,selected_item_slot);//remove the characters item
	                Give_Character_Item(lookup_type,selected_character,selected_item);//give it to them (unequips and moves to last slot in inventory)
	                var _portrait_ID;
	                _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
                
	                state = "Gave_Item_To_Self";
	                Play_Sound(sfx_Menu_Select);
	                pan_direction = "out";//pan the windows out
	                allow_interaction = false;//disable player interaction with this object
	                if(portrait_controller != noone){
	                    Pan_Out_Portrait_Controller(portrait_controller,true);
	                }
	                play_pan_sound = true;
	            }
	            else{//selected a different character
	                if(!Inventory_Is_Full(lookup_type,character_list[start_index + index])){//if target character has an empty slot,
	                    selected_item = Get_Item(lookup_type,selected_character,selected_item_slot);//remember item
	                    Remove_Item(lookup_type,selected_character,selected_item_slot);//remove the characters item
	                    Give_Character_Item("Global",character_list[start_index + index],selected_item);//give it to them (unequips and moves to last slot in inventory)
	                    var _portrait_ID;
	                    _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                    Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
                    
	                    state = "Gave_Item_To_Target";
	                    Play_Sound(sfx_Menu_Select);
	                    pan_direction = "out";//pan the windows out
	                    allow_interaction = false;//disable player interaction with this object
	                    if(portrait_controller != noone){
	                        Pan_Out_Portrait_Controller(portrait_controller,true);
	                    }
	                    play_pan_sound = true;
	                }
	                else{
	                    //Play_Sound(sfx_Error);
	                    Play_Sound(sfx_Menu_Select);
	                    state = "Selecting_Trade_Item";
	                    character_selector_state = 0;//solid frame
	                    item_index = 0;
	                    item_selector = -1;//flash item selector
	                    //selected_character = character_list[start_index + index];//remember character
	                }
	            }
	        }
	    break;
    
	    case "Gave_Item_To_Self":
	        Create_Dialogue(noone,Get_Generic_Voice("Give_Item"),Get_General_Messages("Member_List","Give_To_Self",Get_Item_Stats(selected_item,"Item_Name")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state = "End_Loop";
	    break;
    
	    case "Gave_Item_To_Target":
	        Create_Dialogue(noone,Get_Generic_Voice("Give_Item"),Get_General_Messages("Member_List","Give_To_Other",Get_Item_Stats(selected_item,"Item_Name"),Get_Character_Name(lookup_type,character_list[start_index + index],"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state = "End_Loop";
	    break;
    
	    case "Selected_Trade_Item":
	        var target_item = Get_Item(lookup_type,character_list[start_index + index],item_index);//remember item
	        selected_item = Get_Item(lookup_type,selected_character,selected_item_slot);//remember item 
        
	        if(!Character_Is_Cursed_By_This_Item(lookup_type,character_list[start_index + index],item_index)){//if we arent dropping an equipped cursed item
	            Remove_Item(lookup_type,selected_character,selected_item_slot);//remove the initial characters item
	            Remove_Item(lookup_type,character_list[start_index + index],item_index);//remove the target characters item
	            Give_Character_Item(lookup_type,character_list[start_index + index],selected_item);//give item to target
	            Give_Character_Item(lookup_type,selected_character,target_item);//give item to target
	            var _portrait_ID;
	            _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	            Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
            
	            Create_Dialogue(noone,Get_Generic_Voice("Give_Item"),Get_General_Messages("Member_List","Trade_With_Other",Get_Item_Stats(selected_item,"Item_Name"),Get_Character_Name(lookup_type,character_list[start_index + index],"Total"),Get_Item_Stats(target_item,"Item_Name")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            state = "End_Loop";
	        }
	        else{
	            state = "Selected_Item";
	            Create_Dialogue(noone,Get_Generic_Voice("Give_Item"),Get_General_Messages("Member_List","Cancel_Give_Cursed",Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Item_Name")),id,false,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            Stop_Dialogue_Interaction();
	            Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
	        }
        
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
    
	    //=================
	    //Back out of menu=
	    //=================
	    case "Backed_Out"://backed out, return to previous menu
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	}
}