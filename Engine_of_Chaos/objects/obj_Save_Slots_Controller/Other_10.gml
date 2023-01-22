if(state = "Backed_Out"){
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();//destroy this object
}
else{
    //==================
    //Choosing Save Slot
    //==================
    if(state = "Selecting_Option"){//if we are selecting an option
        if(input_event = "Select_Button"){
            allow_interaction = false;
            Play_Sound(sfx_Menu_Select);
            //if chose "DELETE"
            //else
            
            if(event = "New_Game"){ state = "Display_Create_Character_Message"; }
            else if(event = "Load_Game"){ state = "Load_Game"; }
            else if(event = "Delete_Game"){ state = "Delete_Game"; }
			else if(event = "Challenges"){ state = "Challenges";}
            
            global.Save_Slot = (arrow_position + start_index);
            if((global.Save_Slot < (global.Number_Of_Save_Slots))&&(event != "Challenges")){//If we didnt choose the delete option,
                current_object.window_pan_direction = "out";
            }
            window_pan_direction = "out";
            play_pan_sound = true;
        }
        else if(input_event = "Cancel_Button"){
            allow_interaction = false;
            window_pan_direction = "out";
            state = "Backed_Out";
            play_pan_sound = true;
        }
    }
    //================================
    //Display Create Character Message
    //================================
    else if(state = "Display_Create_Character_Message"){
        state = "Summon_Character_Creator";
        obj_Dialogue_Controller.current_object = id; 
        Start_New_Dialogue("What is the hero's name of this tale?@",false,false);
    }
    //========================
    //Summon Character Creator
    //========================
    else if(state = "Summon_Character_Creator"){
        state = "Creating_Character";
        Create_New_Data();
        Create_Name_Character_Controller(id,Get_Character_Portrait("Global",0,"Default"),Get_Character_Name("Global",0,"Base"));
    }
    //==================
    //Creating Character
    //==================
    else if(state = "Creating_Character"){
        if(parent_event = "Backed_Out_Of_Menu"){
            state = "Backed_Out";
            event_perform(ev_other,ev_user0);
        }
        else if(parent_event = "Named_Character"){
            current_object.new_character_name = new_character_name;
            UI_Cancel_Event(current_object,"Named_Character","none");
            instance_destroy();//destroy this object
        }
    }
    //=========
    //Load Game
    //=========
    else if(state = "Load_Game"){
        UI_Cancel_Event(current_object,"Load_Game","none");
        instance_destroy();//destroy this object
    }
    //===========
    //Delete Game
    //===========
    else if(state = "Delete_Game"){
        UI_Cancel_Event(current_object,"Delete_Game","none");
        instance_destroy();//destroy this object
    }
	//==========
    //Challenges
    //==========
    else if(state = "Challenges"){
        UI_Cancel_Event(current_object,"Challenges","none");
        instance_destroy();//destroy this object
    }
}

