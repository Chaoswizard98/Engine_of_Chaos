function Buy_Item_Event() {
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
	            pan_direction = "out";//pan the windows out
	            allow_interaction = false;//disable player interaction with this object
	            state = "Selected_Character";//we selected a character
	            if(portrait_controller != noone){
	                Pan_Out_Portrait_Controller(portrait_controller,true);
	            }
	            play_pan_sound = true;
	        }
	    break;
	    //===================
	    //Selected character=
	    //===================
	    case "Selected_Character":
	        if(!Inventory_Is_Full(lookup_type,character_list[start_index + index])){//if character has a free inventory space
	            if(Get_Item_Stats(obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index],"Shop_Type") = "Equipment"){//if we can equip from shop
	                //if can equip to either main hand or offhand
	                if(Can_Equip_Item(lookup_type,character_list[start_index + index],obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index])){
	                    state = "Equip_Message";
	                    Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Equip_Item?"),id,false,false);//message, arrow, auto pan
	                }
	                else{
	                    state = "Cant_Equip_Message";
	                    Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Cant_Equip",Get_Character_Name(lookup_type,character_list[start_index + index],"Total")),id,false,false);//message, arrow, auto pan
	                }
	            }
	            else{
	                state = "Return_To_Shop";
	                Buy_Item(false);
	                Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_Item"),id,true,true);//message, arrow, auto pan
	            }
	        }
	        else{//they cant hold the item
	            state = "Hands_Full";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Hands_Full",Get_Character_Name(lookup_type,character_list[start_index + index],"Total")),id,false,false);//message, arrow, auto pan
	        }
	    break;
	    case "Return_To_Shop":
	        with(portrait_controller){//delete portrait controller
	            instance_destroy();
	        }
	        UI_Cancel_Event(current_object,"Purchased_Item","none");
	        instance_destroy();//delete self
	    break;
	    case "Hands_Full":
	        state = "Awaiting_Decision_Hands_Full";
	        Create_YesNo_Menu(id);
	    break;
	    case "Awaiting_Decision_Hands_Full":
	        if(decision = "Yes"){
	            state = "Choose_New_Target";
	            Append_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Who_Gets_It?"),true,true);//message, arrow, auto pan
	        }
	        else{
	            state = "Cancel_New_Target";
	            Pan_Out_Dialogue();
	        }
	    break;
	    case "Cant_Equip_Message":
	        state = "Awaiting_Decision_Cant_Equip";
	        Create_YesNo_Menu(id);
	    break;
	    case "Awaiting_Decision_Cant_Equip":
	        if(decision = "Yes"){
	            state = "Return_To_Shop";
	            Buy_Item(false);
	            Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_Item"),true,true);//message, arrow, auto pan
	        }
	        else{
	            state = "Choose_New_Target";
	            Append_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Who_Gets_It?"),true,true);//message, arrow, auto pan
	        }
	    break;
	    case "Equip_Message":
	        state = "Awaiting_Decision_Equip";
	        Create_YesNo_Menu(id);
	    break;
	    case "Awaiting_Decision_Equip":
	        if(decision = "Yes"){//yes, equip this item now.
	            if(Character_Is_Cursed_By_This_Item(lookup_type,character_list[start_index + index],Get_Item_Equip_Slot(lookup_type,character_list[start_index + index],obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index]))){
	                state = "Return_To_Shop";
	                Buy_Item(false);
	                Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Cant_Equip_Cursed",Get_Character_Name(lookup_type,character_list[start_index + index],"Total")),true,true);//message, arrow, auto pan
	            }
	            else if(Get_Item_Stats(obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index],"Curse_Type",lookup_type,character_list[start_index + index])!= "none"){//if the item will curse the character
	                Buy_Item(true);
	                state = "Character_Is_Cursed";
	                Wait_For_Sound(sfx_Cursed,id);
	            }
	            else{
	                state = "Return_To_Shop";
	                Buy_Item(true);
	                Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_And_Equip"),true,true);//message, arrow, auto pan
	            }
	        }
	        else{//no, buy but dont equip it.
	            state = "Return_To_Shop";
	            Buy_Item(false);
	            Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_Item"),true,true);//message, arrow, auto pan
	        }
	    break;
    
	    case "Character_Is_Cursed":
	        state = "Return_To_Shop";
	        Start_New_Dialogue(Get_General_Messages(obj_Shop_Controller.dialogue_ID,"Buy_And_Equip_Cursed",Get_Character_Name(lookup_type,character_list[start_index + index],"Total")),true,true);//message, arrow, auto pan
	    break;
    
    
	    case "Choose_New_Target":
	        state = "Selecting_Character";
	        portrait_controller.pan_direction = "in";
	        pan_direction = "in";
	        play_pan_sound = true;
	    break;
	    case "Cancel_New_Target":
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        with(portrait_controller){
	            instance_destroy();
	        }
	        instance_destroy();
	    break;
	}



}
