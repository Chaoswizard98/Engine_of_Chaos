function Equip_Item_Event() {
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
	        else{//select button
	            equip_slot = 0;
	            input_event = "none";
	            while(equip_slot < global.Number_Of_Equipment_Slots){//check to see if we can equip something in each slot
	                if(Has_Equippable_Item(lookup_type,character_list[start_index + index],equip_slot)){//if we can equip to this slot,
	                    Play_Sound(sfx_Menu_Select);
	                    play_pan_sound = true;
	                    state = "Selected_Character";
	                    character_selector_state = 0;//solid frame
	                    allow_interaction = false;
	                    pan_direction = "top_out";
	                    break;//break loop
	                }
	                else{
	                    equip_slot += 1;
	                }
	            }
	            if(equip_slot >= global.Number_Of_Equipment_Slots){
	                Play_Sound(sfx_Error);
	            }
	        }
	    break;
	    //================================
	    //Selected Character, pan back in=
	    //================================
	    case "Selected_Character":
	        //panned out, now we pan the top window back in
	        pan_direction = "top_in";
	        state = "Selecting_Item";
	        item_selector = -1;//flash item selector
	        display_type = "Mainhand_Equip";
	        Fill_Member_List_Equip_Array(lookup_type,character_list[start_index + index],equip_slot);
	        play_pan_sound = true;
	    break;
	    //=================
	    //Choosing an item=
	    //=================
	    case "Selecting_Item":
	        if(input_event = "Cancel_Button"){
	            state = "Cancel_Selecting_Item";
	            input_event = "none";
	            allow_interaction = false;
	            pan_direction = "top_out";
	            play_pan_sound = true;
	        }
	        else{
	            input_event = "none";
	            if(Get_Equipped_Item_Slot(lookup_type,character_list[start_index + index],equip_slot) = item_array[item_index]){//if same slot, go to next item slot
	                Play_Sound(sfx_Menu_Select);
	                play_pan_sound = true;
	                Equip_Item(lookup_type,character_list[start_index + index],equip_slot,item_array[item_index]);//lookup type, character, equip slot, item slot
	                var _portrait_ID;
	                _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
	                state = "Selected_Item";
	                character_selector_state = 0;//solid frame
	                allow_interaction = false;
	                pan_direction = "top_out";
	            }
	            else if(Character_Is_Cursed_By_This_Item(lookup_type,character_list[start_index + index],Get_Equipped_Item_Slot(lookup_type,character_list[start_index + index],equip_slot))){
	                allow_interaction = false;
	                state = "Cursed_Refuse_Equip";
	                pan_direction = "out";
	                if(portrait_controller != noone){
	                    Pan_Out_Portrait_Controller(portrait_controller,true);
	                }
	                play_pan_sound = true;
	            }
	            else{
	                if(item_array[item_index] != -1){//if we arent equipping nothing,
	                    if(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_array[item_index]),"Curse_Type",lookup_type,character_list[start_index + index])!= "none"){//if we are equipping a cursed weapon
	                        allow_interaction = false;
	                        state = "You_Are_Cursed";
	                        Equip_Item(lookup_type,character_list[start_index + index],equip_slot,item_array[item_index]);//lookup type, character, equip slot, item slot
	                        var _portrait_ID;
	                        _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                        Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
	                        pan_direction = "out";
	                        if(portrait_controller != noone){
	                            Pan_Out_Portrait_Controller(portrait_controller,true);
	                        }
	                        play_pan_sound = true;
	                    }
	                    else{
	                        Play_Sound(sfx_Menu_Select);
	                        play_pan_sound = true;
	                        Equip_Item(lookup_type,character_list[start_index + index],equip_slot,item_array[item_index]);//lookup type, character, equip slot, item slot
	                        var _portrait_ID;
	                        _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                        Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
	                        state = "Selected_Item";
	                        character_selector_state = 0;//solid frame
	                        allow_interaction = false;
	                        pan_direction = "top_out";
	                    }
	                }
	                else{
	                    Play_Sound(sfx_Menu_Select);
	                    play_pan_sound = true;
	                    Equip_Item(lookup_type,character_list[start_index + index],equip_slot,item_array[item_index]);//lookup type, character, equip slot, item slot
	                    var _portrait_ID;
	                    _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
	                    Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
	                    state = "Selected_Item";
	                    character_selector_state = 0;//solid frame
	                    allow_interaction = false;
	                    pan_direction = "top_out";
	                }
	            }   
	        }
	    break;
            
	    //You are cursed
	    case "You_Are_Cursed":
	        state = "End_Cursed_Message";
	        Create_Dialogue("none",Get_Voice("Equip_Item"),string(Get_Character_Name(lookup_type,character_list[start_index + index],"Total"))+" has been cursed!",id,false,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
	    break;
            
            
	    case "End_Cursed_Message":
	        equip_slot += 1;
	        while(equip_slot < global.Number_Of_Equipment_Slots){//check to see if we can equip something in each slot
	            if(Has_Equippable_Item(lookup_type,character_list[start_index + index],equip_slot)){//if we can equip to this slot,
	                Fill_Member_List_Equip_Array(lookup_type,character_list[start_index + index],equip_slot);
	                item_index = 0;//reset item index
	                play_pan_sound = true;
	                state = "Selecting_Item";
	                character_selector_state = 0;//solid frame
	                allow_interaction = false;
	                portrait_controller.pan_direction = "in";
	                pan_direction = "in";
	                break;//break loop
	            }
	            else{
	                equip_slot += 1;
	            }
	        }
	        if(equip_slot >= global.Number_Of_Equipment_Slots){
	            state = "Selecting_Character";
	            character_selector_state = -1;//flashing frame
	            item_index = 0;//reset item index
	            item_selector = 1;//flash item selector
	            display_type = "Item";
	            portrait_controller.pan_direction = "in";
	            pan_direction = "in";
	            input_event = "none";
	            play_pan_sound = true;
	        }
	    break;
        
    
    
    
	    //Cursed Refuse Equip
	    case "Cursed_Refuse_Equip":
	        state = "End_Refuse_Equip";
	        Create_Dialogue("none",Get_Voice("Equip_Item"),"The curse prevents you from switching equipment.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	    break;
    
	    //return to selecting item
	    case "End_Refuse_Equip":
	        state = "Selecting_Item";
	        portrait_controller.pan_direction = "in";
	        pan_direction = "in";
	    break;
	    //bottom panned in, 
    
    
    
    
    
    
    
    
	    //========================
	    //Cancel Choosing an item=
	    //========================
	    case "Cancel_Selecting_Item":
	        state = "Selecting_Character";
	        character_selector_state = -1;//flashing frame
	        item_index = 0;//reset item index
	        item_selector = 1;//flash item selector
	        display_type = "Item";
	        pan_direction = "top_in";
	        input_event = "none";
	        play_pan_sound = true;
	    break;
	    //=================
	    //Selected an item=
	    //=================
	    case "Selected_Item":
	        equip_slot += 1;
	        while(equip_slot < global.Number_Of_Equipment_Slots){//check to see if we can equip something in each slot
	            if(Has_Equippable_Item(lookup_type,character_list[start_index + index],equip_slot)){//if we can equip to this slot,
	                Fill_Member_List_Equip_Array(lookup_type,character_list[start_index + index],equip_slot);
	                item_index = 0;//reset item index
	                play_pan_sound = true;
	                state = "Selecting_Item";
	                character_selector_state = 0;//solid frame
	                allow_interaction = false;
	                pan_direction = "top_in";
	                break;//break loop
	            }
	            else{
	                equip_slot += 1;
	            }
	        }
	        if(equip_slot >= global.Number_Of_Equipment_Slots){
	            state = "Selecting_Character";
	            character_selector_state = -1;//flashing frame
	            item_index = 0;//reset item index
	            item_selector = 1;//flash item selector
	            display_type = "Item";
	            pan_direction = "top_in";
	            input_event = "none";
	            play_pan_sound = true;
	        }
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
