function Party_Management_Join() {
	switch(state){
	    case "Start":
	        if((lookup_type = "Local")){
	            state = "Backed_Out";
	            Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Empty_Faction"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else if(Everyone_In_Battle_Party(player.faction)){
	            state = "Backed_Out";
	            Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Full_Party"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{
	            state = "Create_Member_List";
	            Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Who_Joins_Party?"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
	    case "Create_Member_List":
	        state = "Selecting_Character";
	        Create_Member_List_Controller("Global",player.faction,"Status","Join_Battle_Party",id);
	    break;
	    case "Selecting_Character":
	        if(parent_event = "Backed_Out_Of_Menu"){
	            parent_event = "none";
	            state = "Backed_Out";
	            Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Cancel"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{
	            if(Get_Battle_Party_Size(player.faction) < Get_Faction_Stats(player.faction,"Max_Battle_Party_Size")){
	                state = "Start";
	                global.In_Battle_Party[joining_character] = true;
	                Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Joins_Party",Get_Character_Name(lookup_type,joining_character,"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	            else{//we're at the limit, choose a relief
	                state = "Create_Member_List_Relief";
	                Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Choose_Relief"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	        }
	    break;
	    case "Create_Member_List_Relief":
	        state = "Selecting_Relief";
	        Create_Member_List_Controller("Global",player.faction,"Status","Leave_Battle_Party",id);
	    break;
	    case "Selecting_Relief":
	        if(parent_event = "Backed_Out_Of_Menu"){
	            parent_event = "none";
	            state = "Backed_Out";
	            Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Cancel"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{//we chose a relief
	            if(!global.Can_Leave_Battle_Party[retiring_character]){//if they cant leave the party,
	                state = "Start";
	                Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Cancel_Leader",Get_Character_Name(lookup_type,retiring_character,"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	            else{
	                state = "Start";
	                global.In_Battle_Party[retiring_character] = false;
	                global.In_Battle_Party[joining_character] = true;
	                Create_Character_Dialogue("Local",npc,Get_General_Messages("Party_Management","Swap_Party_Members",Get_Character_Name(lookup_type,retiring_character,"Total"),Get_Character_Name(lookup_type,joining_character,"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	        }
	    break;
	    case "Backed_Out":
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	}
}