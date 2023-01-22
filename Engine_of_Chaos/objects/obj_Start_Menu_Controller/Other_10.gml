if(input_event = "Cancel_Button"){
    //Use if you want to ping back to another menu controller.
    //UI_Cancel_Event(current_object,'Backed_Out_Of_Menu','none');
    //instance_destroy();//destroy this object
}
else{
    //====================
    //Choosing menu option
    //====================
    if(state = "Selecting_Option"){//if we are selecting an option
        if(input_event = "Reset"){
            input_event = "none";
            if(window_pan != 0){
                window_pan_direction = "in";
                play_pan_sound = true;
            }
            else{
                allow_interaction = true;
            }
        }
        else if(input_event = "Select_Button"){
            allow_interaction = false;
            Play_Sound(sfx_Menu_Select);
            switch(arrow_position){
                case 0: state = "Select_New_Game_Message"; obj_Dialogue_Controller.current_object = id; Start_New_Dialogue("Choose a save slot.@",false,false); break;//New Game
                case 1: state = "Select_Load_Game_Message"; obj_Dialogue_Controller.current_object = id; Start_New_Dialogue("Choose a save slot.@",false,false); break;//Load Game
                case 2: state = "Select_Challenges_Message"; obj_Dialogue_Controller.current_object = id; Start_New_Dialogue("Choose a save slot.@",false,false);break;//Challenges
                case 3: state = "Waiting_For_Options_Menu"; Create_Options_Menu(id); break;//Options
            }
        }
    }
    //========================
    //Return from Options Menu
    //========================
    else if(state = "Waiting_For_Options_Menu"){
        state = "Selecting_Option";
        input_event = "Reset";
        parent_event = "none";
        obj_Dialogue_Controller.current_object = id;
        event_perform(ev_other,ev_user0);
    }
    //=======================
    //Wait for new Controller
    //=======================
    else if(state = "Select_New_Game_Message"){
        state = "Waiting_For_Parent";
        Create_Save_Slots_Controller(id,"New_Game");
    }
    //========================
    //Wait for load Controller
    //========================
    else if(state = "Select_Load_Game_Message"){
        state = "Waiting_For_Parent";
        Create_Save_Slots_Controller(id,"Load_Game");
    }
	//==============================
    //Wait for challenges Controller
    //==============================
    else if(state = "Select_Challenges_Message"){
        state = "Waiting_For_Parent";
		//input_event = "Challenges";
        Create_Save_Slots_Controller(id,"Challenges");
    }
    //==========================
    //Wait for delete Controller
    //==========================
    else if(state = "Delete_Game_Message"){
        state = "Waiting_For_Parent";
        Create_Save_Slots_Controller(id,"Delete_Game");
    }
    //==============================
    //Heard back from new Controller
    //==============================
    else if(state = "Waiting_For_Parent"){
        if(parent_event = "Backed_Out_Of_Menu"){
            state = "Selecting_Option";
            input_event = "Reset";
            parent_event = "none";
            obj_Dialogue_Controller.current_object = id; 
            Start_New_Dialogue("Change your mind?@",false,false);
        }
        else if(parent_event = "Named_Character"){
            state = "Display_Difficulty_Message";
            parent_event = "none";
            obj_Dialogue_Controller.current_object = id;
            global.Name[0] = new_character_name;
            Start_New_Dialogue(new_character_name + "?^ Nice name!",true,false);
        }
        else if(parent_event = "Load_Game"){
            if(global.Save_Slot = global.Number_Of_Save_Slots){//If we chose the delete option,
                state = "Delete_Game_Message";
                parent_event = "none";
                obj_Dialogue_Controller.current_object = id;
                Start_New_Dialogue("Which game do you want to delete?@",false,false);
            }
            else{
                state = "Load_Game";
                parent_event = "none";
                obj_Dialogue_Controller.current_object = id;
                Start_New_Dialogue("Alright then!^ Let's continue the adventure!",true,true);
            }
        }
		else if(parent_event = "Challenges"){
			state = "Waiting_For_Challenges_Menu";
            parent_event = "none";
			Load_Game();//Load the game
			Create_Challenges_Menu(id);
		}
        else if(parent_event = "Delete_Game"){
            state = "Create_Delete_Game_Decision";
            parent_event = "none";
            obj_Dialogue_Controller.current_object = id;
            Start_New_Dialogue("Are you sure you want to delete this save?@",false,false);
        }
    }
    //==========================
    //Display Difficulty Message
    //==========================
    else if(state = "Display_Difficulty_Message"){
        state = "Choose_Difficulty";
        Start_New_Dialogue("What level of difficulty do you want to go with?\n(Note this currently has no effect)@",true,false);
    }
    //=================
    //Choose Difficulty
    //=================
    else if(state = "Choose_Difficulty"){
        state = "Selected_Difficulty";
        Create_Difficulty_Menu(id);
    }
    //===================
    //Selected Difficulty
    //===================
    else if(state = "Selected_Difficulty"){
        state = "Ask_For_Tutorial";
        global.Difficulty = decision;
        switch(decision){
            case "Easy": Start_New_Dialogue("Taking it easy huh?",true,false); break;
            case "Normal": Start_New_Dialogue("Sounds good to me!",true,false); break;
            case "Hard": Start_New_Dialogue("Up for a bit of a challenge then huh?",true,false); break;
            case "Insane": Start_New_Dialogue("Yikes!^ Good luck with that one!",true,false); break;
            default: Start_New_Dialogue("Sounds good to me!",true,false); break;
        }
    }
    //================
    //Ask For Tutorial
    //================
    else if(state = "Ask_For_Tutorial"){
        state = "Create_Tutorial_Decision";
        Start_New_Dialogue("Would you like to play the tutorial?@",false,false);
    }
    //========================
    //Create Tutorial Decision
    //========================
    else if(state = "Create_Tutorial_Decision"){
        state = "Waiting_For_Tutorial_Decision";
        Create_YesNo_Menu(id);
    }
    //========================
    //Answer Tutorial Decision
    //========================
    else if(state = "Waiting_For_Tutorial_Decision"){
        if(decision = "Yes"){
            state = "Tutorial";
            Start_New_Dialogue("Cool!^ I'll let you play it as soon as I finish making it!%\nFor now, just hit buttons on your keyboard until something happens.%\nHave fun!",true,true);
        }
        else{
            state = "New_Game";
            Start_New_Dialogue("Alright then!^ Let's start the adventure!",true,true);
        }
    }
    //========
    //Tutorial
    //========
    else if(state = "Tutorial"){
        state = "none";
        Room_Transfer("AU_Jason","Force",tutorial_room,"Egress");
    }
    //========
    //New Game
    //========
    else if(state = "New_Game"){
        state = "none";
        Room_Transfer("AU_Jason","Force",new_game_room,"Egress");
    }
    //=========
    //Load Game
    //=========
    else if(state = "Load_Game"){
        state = "none";
        Load_Game();//Load the game
        ini_open("Save_Slot_"+string(global.Save_Slot)+".sav");//Open save file
        var _room = asset_get_index(ini_read_string("Player_Data","Room",room_get_name(room)));//Get Saved Room
        ini_close();//Close Save File
        Room_Transfer("","Load_Game",_room);//Go to saved room
    }
    //======================
    //Create Delete Decision
    //======================
    else if(state = "Create_Delete_Game_Decision"){
        state = "Waiting_For_Delete_Game_Decision";
        Create_YesNo_Menu(id);
    }
    //======================
    //Answer Delete Decision
    //======================
    else if(state = "Waiting_For_Delete_Game_Decision"){
        if(decision = "Yes"){
            state = "Selecting_Option";
            input_event = "Reset";
            parent_event = "none";
            obj_Dialogue_Controller.current_object = id;
            if(file_exists("Save_Slot_"+string(global.Save_Slot)+".sav")){
                file_delete("Save_Slot_"+string(global.Save_Slot)+".sav");
            }
            if(!Has_Existing_Save()){//if a save exists,
                menu_locked[1] = true;//Lock load game if no slots remain
				menu_locked[2] = true;//Lock challenges if no slots remain
                start_index = 0;
                arrow_position = 0;
            }
            Start_New_Dialogue("The save was deleted.@",false,false);
        }
        else{
            state = "Selecting_Option";
            input_event = "Reset";
            parent_event = "none";
            obj_Dialogue_Controller.current_object = id; 
            Start_New_Dialogue("Change your mind?@",false,false);
        }
    }
	//======================
	//Create Challenges Menu
	//======================
	else if(state = "Waiting_For_Challenges_Menu"){
		if(parent_event = "Backed_Out_Of_Menu"){
            state = "Selecting_Option";
            input_event = "Reset";
            parent_event = "none";
            obj_Dialogue_Controller.current_object = id; 
            Start_New_Dialogue("Change your mind?@",false,false);
        }
	}
}

