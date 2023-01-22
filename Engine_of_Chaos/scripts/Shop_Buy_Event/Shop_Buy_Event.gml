function Shop_Buy_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        state = "Pan_Shop_In";
	        if(number_of_items <= 0){
	            state = "Backed_Out_Of_Menu";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Out_Of_Stock"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else if(item_type = "Rare_Items"){
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Start_Buy_Deals"),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Start_Buy"),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
	    //============
	    //Pan Shop In=
	    //============
	    case "Pan_Shop_In":
	        state = "Selecting_Item";
	        pan_direction = "in";
	        play_pan_sound = true;
	    break;
	    //===============
	    //Selecting Item=
	    //===============
	    case "Selecting_Item":
	        if(input_event = "Select_Button"){
	            state = "Selected_Item";
	            input_event = "none";
	            pan_direction = "out";
	            play_pan_sound = true;
	        }
	        else if(input_event =  "Cancel_Button"){
	            input_event = "none";
	            state = "Backed_Out_Of_Menu";
	            pan_direction = "out";
	            Pan_Out_Dialogue();
	            play_pan_sound = true;
	        }
	    break;
	    //==============
	    //Selected Item=
	    //==============
	    case "Selected_Item":
	        state = "Confirm_Price";
	        Append_Dialogue(Get_General_Messages(dialogue_ID,"Item_Costs_X",Get_Item_Stats(item_array[(page_number*items_per_page)+item_index],"Item_Name"),string(floor(Get_Item_Stats(item_array[(page_number*items_per_page)+item_index],"Value")*sell_value_modifier))),false,false);//message, arrow, auto pan
	    break;
	    //==============
	    //Confirm Price=
	    //==============
	    case "Confirm_Price":
	        state = "Awaiting_Decision";
	        Create_YesNo_Menu(id);
	    break;
	    //==================
	    //Awaiting Decision=
	    //==================
	    case "Awaiting_Decision":
	        if(decision = "Yes"){
	            if(Can_Afford_Cost(floor(Get_Item_Stats(item_array[(page_number*items_per_page)+item_index],"Value")*sell_value_modifier))){
	                state = "Pan_In_Member_List";
	                Append_Dialogue(Get_General_Messages(dialogue_ID,"Who_Gets_It?"),true,true);//message, arrow, auto pan
	            }
	            else{
	                state = "Start";
	                Append_Dialogue(Get_General_Messages(dialogue_ID,"Not_Enough_Gold"),true,true);//message, arrow, auto pan
	            }
	        }
	        else{
	            state = "Start";
	            Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cancel_Purchase"),true,true);//message, arrow, auto pan
	        }
	    break;
	    //===================
	    //Backed Out Of Menu=
	    //===================
	    case "Backed_Out_Of_Menu":
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	    //===================
	    //Pan In Member List=
	    //===================
	    case "Pan_In_Member_List":
	        state = "Selecting_Character";
	        if(Get_Item_Stats(item_array[(page_number*items_per_page)+item_index],"Shop_Type")= "Equipment"){
	            Create_Member_List_Controller(lookup_type,current_player.faction,"Buying_Equipment","Buy_Item",id);
	            obj_Member_List_Controller.current_npc = current_npc;//set controller voice to npc
	        }
	        else{
	            Create_Member_List_Controller(lookup_type,current_player.faction,"Buying_Item","Buy_Item",id);
	            obj_Member_List_Controller.current_npc = current_npc;//set controller voice to npc
	        }
	    break;
	    //====================
	    //Selecting Character=
	    //====================
	    case "Selecting_Character":
	        if(parent_event = "Backed_Out_Of_Menu"){
	            state = "Start";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Cancel_Purchase"),id,true,true);//message, arrow, auto pan
	        }
	        else if(parent_event = "Purchased_Item"){
	            state = "Start";
	            event_perform(ev_other,ev_user0);
	        }
	    break;
	}
}