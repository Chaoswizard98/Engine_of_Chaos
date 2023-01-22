function Church_Promote_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        state = "Create_Member_List";
	        character_index = 0;
	        cure_index = 0;
	        no_one_injured = true;
	        if(lookup_type = "Local"){
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Invalid_Party"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            state = "Create_More_Help_Decision";
	        }
	        else if(Faction_Is_Empty(lookup_type,current_player.faction)){
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Cant_Promote_Anyone"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            state = "Create_More_Help_Decision";
	        }
	        else{
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Promote_Who"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
	    case "Create_Member_List":
	        state = "Selecting_Character";
	        Create_Member_List_Controller(lookup_type,current_player.faction,"Status","Promote",id); break;//Display member list (status)
	    break;
	    case "Selecting_Character":
	        if(parent_event = "Backed_Out_Of_Menu"){//cancel selecting character
	            state = "Create_More_Help_Decision";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Im_Wrong"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{//selected a character
	            Get_Possible_Promotions(character_index);
	            if(number_of_promotions > 0){
	                state = "Create_Promote_Decision";
	                Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"X_Wants_Promotion",Get_Character_Name(lookup_type,character_index,"Total")),id,false,false);
	            }
	            else{
	                state = "Start";
	                Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Remain_Current_Class",Get_Character_Name(lookup_type,character_index,"Total")),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	            }
	        }
	    break;
    
	    case "Create_Promote_Decision":
	        state = "Promote?";
	        Create_YesNo_Menu(id);
	    break;
    
    
	    case "Promote?":
	        if(decision = "Yes"){
	            state = "Create_Decision";
	            Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Can_Promote_To_X",Get_Character_Name(lookup_type,character_index,"Total"),Get_Level_Scheme_Stats(lookup_type,character_index,promotion_array[number_of_promotions-1],"Class_Name","Base",Get_Character_Level(lookup_type,character_index,"Total"))),false,false);
	            //X can be promoted to Y with the Z. OK?
	            //X can be promoted to Y. OK?
	        }
	        else{
	            Pan_Out_Dialogue();
	            state = "Start";
	        }
	    break;
    
	    case "Create_Decision":
	        state = "Promote_To_Class?";
	        Create_YesNo_Menu(id);
	    break;
    
	    case "Promote_To_Class?":
	        if(decision = "Yes"){
	            state = "Promote_Character";
	            Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Promote",Get_Character_Class(lookup_type,character_index,"Total"),Get_Character_Name(lookup_type,character_index,"Total"),Get_Level_Scheme_Stats(lookup_type,character_index,promotion_array[number_of_promotions-1],"Class_Name","Base",Get_Character_Level(lookup_type,character_index,"Total"))),false,false);
	        }
	        else{
	            number_of_promotions -= 1;
	            if(number_of_promotions != 0){
	                state = "Promote?";
	                decision = "Yes";
	                event_perform(ev_other,ev_user0);
	            }
	            else{
	                Pan_Out_Dialogue();
	                state = "Start";
	            }
	        }
	    break;
    
    
	    case "Promote_Character":
	        state = "Wait_For_Sound";
	        Wait_For_Sound(sfx_Promote,id);
	    break;
    
	    case "Wait_For_Sound":
	        state = "Wait_For_Sound_2";
	        Promote_Character(character_index,promotion_array[number_of_promotions-1]);
	        with(obj_Dialogue_Controller){
	            parent_event = "none";
	            allow_interaction = true;//allow player to end / continue dialogue
	            display_arrow = true;
	        }
	    break;
    
	    case "Wait_For_Sound_2":
	        state = "Start";
	        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Successfully_Promoted",Get_Character_Name(lookup_type,character_index,"Total"),Get_Character_Class(lookup_type,character_index,"Total")),true,true);
	    break;
    
	    case "Create_More_Help_Decision":
	        state = "Back_To_Menu?";
	        Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Another_Desire"),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	    break;
	    case "Back_To_Menu?":
	        state = "Back_To_Menu_Decision";
	        Create_YesNo_Menu(id);
	    break;
	    case "Back_To_Menu_Decision":
	        state = "Back_Out";
	        Pan_Out_Dialogue();
	    break;
	    case "Back_Out":
	        if(decision = "Yes"){
	            UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	            instance_destroy();
	        }
	        else{
	            UI_Cancel_Event(current_object,"Backed_Out_Of_All_Menus","none");
	            instance_destroy();
	        }
	    break;
	}



}
