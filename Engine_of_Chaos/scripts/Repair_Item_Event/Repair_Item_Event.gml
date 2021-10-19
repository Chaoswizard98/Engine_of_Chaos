function Repair_Item_Event() {
	switch(state){
	    //=================
	    //Back out of menu=
	    //=================
	    case "Backed_Out"://backed out, return to previous menu
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
    
	    //======================
	    //selecting a character=
	    //======================
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
	            if(!Inventory_Is_Empty(lookup_type,character_list[start_index + index])){//if character has at least 1 item
	                Play_Sound(sfx_Menu_Select);
	                state = "Selecting_Item";
	                character_selector_state = 0;//solid frame
	                item_selector = -1;//flash item selector
	            }
	            else{//no item to sell, play error sound
	                Play_Sound(sfx_Error);
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
	    break;
    
	    case "Selected_Item":
	        if(Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Repairs_To") != "none"){//if we can repair it
	            state = "Create_Decision";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Repair_For_X",string(floor(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Repair_Cost")*obj_Shop_Controller.repair_value_modifier))),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
            
	        }
	        else{//item isnt damaged
	            state = "Return_To_Shop";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Not_Damaged"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
    
	    case "Create_Decision":
	        state = "Awaiting_Decision";
	        Create_YesNo_Menu(id);
	    break;
    
	    case "Awaiting_Decision":
	        if(decision = "Yes"){
	            state = "Return_To_Shop";
	            Repair_Item();
	            Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Repaired_Item"),true,true);//message, arrow, auto pan
	        }
	        else{
	            state = "Return_To_Shop";
	            Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Cancel_Repair_Item"),true,true);//message, arrow, auto pan
	        }
	    break;
		
	    case "Return_To_Shop":
	        with(portrait_controller){//delete portrait controller
	            instance_destroy();
	        }
	        UI_Cancel_Event(current_object,"Repaired_Item","none");
	        instance_destroy();//delete self
	    break;
	}
}