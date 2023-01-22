function Shop_Sell_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        state = "Pan_In_Member_List";
	        Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Start_Sell"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
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
	        Create_Member_List_Controller(lookup_type,current_player.faction,"Item","Sell_Item",id);
	        obj_Member_List_Controller.current_npc = current_npc;//set controller voice to npc
	    break;
	    //====================
	    //Selecting Character=
	    //====================
	    case "Selecting_Character":
	        if(parent_event = "Backed_Out_Of_Menu"){
	            parent_event = "none";
	            state = "Backed_Out_Of_Menu";
	            event_perform(ev_other,ev_user0);
	        }
	        else{
	            state = "Start";
	            event_perform(ev_other,ev_user0);
	        }
	    break;
	}
}