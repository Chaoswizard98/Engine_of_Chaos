function Church_Save_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        state = "Create_Decision_Controller";
	        character_index = 0;
	        no_one_injured = true;
	        Create_Dialogue("none",Get_Voice(voice_ID),Get_General_Messages(dialogue_ID,"Save"),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	    break;
	    case "Create_Decision_Controller":
	        state = "Awaiting_Decision";
	        Create_YesNo_Menu(id);
	    break;
	    case "Awaiting_Decision":
	        if(decision = "Yes"){
	            Wait_For_Sound(sfx_Save_Game,obj_Dialogue_Controller);
	            Save_Game("Church");
	            state = "Wait_For_Save_Sound";
	        }
	        else{
	            Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cancel"),true,true);
	            state = "Create_More_Help_Decision";
	        }
	    break;
	    case "Wait_For_Save_Sound":
	        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Continue_Adventure"),false,false);
	        character_index += 1;
	        state = "Create_Continue_Decision";
	    break;
	    case "Create_Continue_Decision":
	        state = "Continue_Adventure?";
	        Create_YesNo_Menu(id);
	    break;
	    case "Continue_Adventure?":
	        if(decision = "Yes"){
	            decision = "No";
	            state = "Back_Out";
	            Pan_Out_Dialogue();
	        }
	        else{
	            state = "Fade_Screen";
	            Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Exit_Game"),true,true);
	        }
	    break;
	    case "Fade_Screen":
	        state = "Return_To_Title_Screen";
	        Create_Screen_Fade(c_black,0,1,.04,"out",id);//color,initial alpha,end alpha,fade speed, fade direction, current object
	    break;
	    case "Return_To_Title_Screen":
	        room_goto(room_Title_Screen);
	    break;
    
	    case "Create_More_Help_Decision":
	        state = "Back_To_Menu?";
	        Create_Dialogue("none",Get_Voice(voice_ID),Get_General_Messages(dialogue_ID,"Another_Desire"),id,false,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
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
