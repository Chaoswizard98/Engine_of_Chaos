function Start_Game_Script(){
	switch(state){
	    //============
	    //Intro Stuff=
	    //============
    
	    //initial message.
	    case "Start":
	        state = "Create_Start_Menu";
	        Create_Dialogue(noone,sfx_Dialogue01,"Did you know that you can skip this message by holding space on the previous screen?%\nI can tell just how pumped you are, so here's the menu to get started!@",id,true,false);
	    break;
	    //if we were holding space on startup, skip welcome message.
	    case "Skip_Start":
	        state = "Create_Start_Menu";
	        Create_Dialogue(noone,sfx_Dialogue01,"I can tell just how pumped you are, so here's the menu to get started!@",id,false,false);
	    break;
	    //Create the start menu
	    case "Create_Start_Menu":
	        state = "Waiting_For_Parent";
	        //start_menu = Create_Start_Menu(id);
	    break;
    
	    //===========
	    //Menu Stuff=
	    //===========
	    case "Waiting_For_Parent":
	        if((parent_event = "Selected_New_Game")||(parent_event = "Selected_Challenges")){
	            state = "Selecting_Save_Slot_Dialogue";
	            Start_New_Dialogue("Choose a save slot.@",false,false);
	        }
	    break;
	    case "Selecting_Save_Slot_Dialogue":
	        state = "Selecting_Save_Slot";
	        Create_New_Game_Menu(start_menu);
	    break;
	    case "Selecting_Save_Slot":
	        if(parent_event = "Backed_Out_Of_Menu"){
	            Start_New_Dialogue("Change your mind?@",false,false);
	            state = "Enable_Start_Menu";
	        }
	        else if(parent_event = "Selected_New_Save"){
	            Start_New_Dialogue("What is the hero's name of this tale?@",false,false);
	            state = "Go_To_Character_Creation";
	        }
	    break;
	    case "Enable_Start_Menu":
	        start_menu.allow_interaction = true;
	        state = "Waiting_For_Parent";
	        start_menu.state = "Selecting_Option";
	    break;
	    case "Go_To_Character_Creation":
	        state = "Creating_Character";
	        Create_New_Data();
	        Create_Name_Character_Controller(id,Get_Character_Portrait("Global",0,"Default"),Get_Character_Name("Global",0,"Base"));//current_object, portrait id, default name
	    break;
	    case "Creating_Character":
	        state = "Return_To_Start_Menu";
	        if(parent_event = "Backed_Out_Of_Menu"){
	            Start_New_Dialogue("Change your mind?@",false,false);
	        }
	        else if(parent_event = "Named_Character"){
	            global.Name[0] = new_character_name;
	            Start_New_Dialogue(string(global.Name[0]) + "?^ Nice name!% Now let's start the adventure!",false,false);
	            state = "Screen_Fade";
	        }
	    break;
	    case "Return_To_Start_Menu":
	        state = "Waiting_For_Parent";
	        //start_menu = Create_Start_Menu(id);
	    break;
	    case "Selected_Challenge_Battle":
	        state = "Confirm_Challenge";
	        Start_New_Dialogue("Are you sure you want to attempt this challenge?@",false,false);
	    break;
	    case "Confirm_Challenge":
	        state = "Waiting_For_Challenge_Confirmation";
	        Create_YesNo_Menu(id);
	    break;
	    case "Waiting_For_Challenge_Confirmation":
	        if(decision = "Yes"){
	            state = "Fade_To_Challenge";
	            Start_New_Dialogue("Alright then. Good luck!",false,false);
	        }
	        else{
	            Start_New_Dialogue("Change your mind?@",false,false);
	            state = "Enable_Challenges_Menu";
	        }
	    break;
	    case "Enable_Challenges_Menu":
	        challenges_menu.window_pan_direction = "in";
	        Play_Sound(sfx_Menu_Swish);
	        state = "Waiting_For_Parent";
	        challenges_menu.state = "Selecting_Option";
	    break;
	    case "Fade_To_Challenge":
	        state = "Room_Transfer_To_Challenge";
	        Create_Screen_Fade(c_black,0,1,.04,"out",id);//color,initial alpha,end alpha,fade speed, fade direction, current object
	    break;
	    case "Room_Transfer_To_Challenge":
	        state = "none";
	        Create_New_Data();
	        room_goto(selected_challenge_map);
	    break;
	    case "Screen_Fade":
	        state = "Room_Transfer";
	        Create_Screen_Fade(c_black,0,1,.04,"out",id);//color,initial alpha,end alpha,fade speed, fade direction, current object
	    break;
	    case "Room_Transfer":
	        state = "none";
	        room_goto_next();
	    break;
	}
}