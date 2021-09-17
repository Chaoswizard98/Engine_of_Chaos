function Drop_Item_Event() {
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
	            if(Inventory_Is_Empty(lookup_type,character_list[start_index + index])){//if the character doesnt have any items
	                Play_Sound(sfx_Error);
	            }
	            else{//character has items, allow player to select one
	                Play_Sound(sfx_Menu_Select);
	                state = "Selecting_Item";
	                character_selector_state = 0;//solid frame
	                item_selector = -1;//flash item selector
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
	            if(Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Can_Drop")){//if we can drop it
	                state = "Selected_Item";
	                Play_Sound(sfx_Menu_Select);
	                pan_direction = "out";//pan the windows out
	                allow_interaction = false;//disable player interaction with this object
	                //event = 'Selected_Item';
	                if(portrait_controller != noone){
	                    Pan_Out_Portrait_Controller(portrait_controller,true);
	                }
	                play_pan_sound = true;
	            }
	            else{//cant drop important items, play error sound
	                Play_Sound(sfx_Error);
	            }
	        }
	    break;
	    //=================
	    //Selected an item=
	    //=================
	    case "Selected_Item":
	        Create_Dialogue(noone,Get_Generic_Voice("Drop_Item"),Get_General_Messages("Member_List","Discard_Item?",Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Item_Name")),id,true,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state = "Create_Decision";
	    break;
    
	    //=================
	    //Changed our mind=
	    //=================
	    case "Cancel_Drop_Item":
	        pan_direction = "in";
	        portrait_controller.pan_direction = "in";
	        state = "Selecting_Character";
	        character_selector_state = -1;//flashing frame
	        item_index = 0;//reset item index
	        item_selector = 1;//flash item selector
	        play_pan_sound = true;
	    break;
    
	    //================
	    //Dropped an item=
	    //================
	    case "Dropped_Item":
	        with(portrait_controller){//delete portrait controller
	            instance_destroy();
	        }
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();//delete self
	    break;
    
	    //===================
	    //Create Yes/No menu=
	    //===================
	    case "Create_Decision":
	        Create_YesNo_Menu(id);
	        state = "Awaiting_Decision";
	    break;
    
	    //=======================
	    //Recieved yes/no answer=
	    //=======================
	    case "Awaiting_Decision":
	        switch(decision){
	            case "Yes"://delete item
	                if(!Character_Is_Cursed_By_This_Item(lookup_type,character_list[start_index + index],item_index)){//if we arent dropping an equipped cursed item
	                    Start_New_Dialogue(Get_General_Messages("Member_List","Item_Was_Discarded",Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Item_Name")),true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	                    Remove_Item(lookup_type,character_list[start_index + index],item_index);//character, item slot
	                    var _portrait_ID;
	                    _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                    Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
	                    state = "Dropped_Item";
	                }
	                else{//we cant drop a cursed item
	                    Start_New_Dialogue(Get_General_Messages("Member_List","Cancel_Drop_Cursed",Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Item_Name")),false,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	                    Stop_Dialogue_Interaction();
	                    Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
	                    state = "Cancel_Drop_Item";
	                }
	            break;
	            case "No"://dont delete item
	                Pan_Out_Dialogue();
	                state = "Cancel_Drop_Item";
	            break;
	        }
	    break;
    
	    //================
	    //Back out of menu=
	    //================
	    case "Backed_Out"://backed out, return to previous menu
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	}



}
