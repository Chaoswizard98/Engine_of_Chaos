function Sell_Item_Event() {
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
	            state = "Selected_Item";
	            input_event = "none";
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
	        if(Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Can_Sell")){//if we can sell it
	            //I'll pay X gold coins#for it, OK?@
	            state = "Create_Decision";
	            if(Get_Inventory_Item_Stats(lookup_type,character_list[start_index + index],item_index,"Shop_ID") != -1){//if it's a rare item
	                Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_For_X_Rare",string(floor(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Value")*obj_Shop_Controller.buy_value_modifier))),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	            else{
	                Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_For_X",string(floor(Get_Item_Stats(Get_Item(lookup_type,character_list[start_index + index],item_index),"Value")*obj_Shop_Controller.buy_value_modifier))),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	        }
	        else{//cant sell important items
	            //Sorry, I can't buy that...
	            state = "Return_To_Shop";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Cant_Buy"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
    
	    case "Create_Decision":
	        state = "Awaiting_Decision";
	        Create_YesNo_Menu(id);
	    break;
        
	    case "Awaiting_Decision":
	        if(decision = "Yes"){
	            state = "Return_To_Shop";
	            if(!Character_Is_Cursed_By_This_Item(lookup_type,character_list[start_index + index],item_index)){//prevent selling equipped cursed items
	                Sell_Item();
	                Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Sold_Item"),true,true);//message, arrow, auto pan
	            }
	            else{
	                Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Cancel_Sell_Cursed"),true,true);//message, arrow, auto pan
	            }
	        }
	        else{
	            state = "Return_To_Shop";
	            Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Cancel_Sell_Item"),true,true);//message, arrow, auto pan
	        }
	    break;

	    case "Return_To_Shop":
	        with(portrait_controller){//delete portrait controller
	            instance_destroy();
	        }
	        UI_Cancel_Event(current_object,"Sold_Item","none");
	        instance_destroy();//delete self
	    break;
	}
}