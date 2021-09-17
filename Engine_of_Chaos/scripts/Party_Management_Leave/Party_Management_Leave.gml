function Party_Management_Leave() {
	switch(state){
	    case "Start":
	        state = "Create_Member_List";
	        if((lookup_type = "Local")||Faction_Is_Empty(lookup_type,player.faction)){
	            state = "Backed_Out";
	            Create_Dialogue(Get_Character_Portrait("Local",npc,"Total"),Get_Character_Voice("Local",npc,"Total"),Get_General_Messages("Party_Management","Empty_Faction"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{
	            Create_Dialogue(Get_Character_Portrait("Local",npc,"Total"),Get_Character_Voice("Local",npc,"Total"),Get_General_Messages("Party_Management","Who_Quits_Party?"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
	    case "Create_Member_List":
	        state = "Selecting_Character";
	        Create_Member_List_Controller(lookup_type,player.faction,"Status","Leave_Battle_Party",id);
	    break;
	    case "Selecting_Character":
	        if(parent_event = "Backed_Out_Of_Menu"){
	            parent_event = "none";
	            state = "Backed_Out";
	            Create_Dialogue(Get_Character_Portrait("Local",npc,"Total"),Get_Character_Voice("Local",npc,"Total"),Get_General_Messages("Party_Management","Cancel"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{
	            state = "Start";
	            if(!global.Can_Leave_Battle_Party[retiring_character]){//if they cant leave the party,
	                Create_Dialogue(Get_Character_Portrait("Local",npc,"Total"),Get_Character_Voice("Local",npc,"Total"),Get_General_Messages("Party_Management","Cancel_Leader",Get_Character_Name(lookup_type,retiring_character,"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	            else{
	                global.In_Battle_Party[retiring_character] = false;
	                Create_Dialogue(Get_Character_Portrait("Local",npc,"Total"),Get_Character_Voice("Local",npc,"Total"),Get_General_Messages("Party_Management","Quit_Party",Get_Character_Name(lookup_type,retiring_character,"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	        }
	    break;
	    case "Backed_Out":
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	}



}
