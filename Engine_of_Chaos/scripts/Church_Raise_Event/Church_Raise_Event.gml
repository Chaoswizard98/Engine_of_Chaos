function Church_Raise_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        if(global.Perma_Death){
	            state = "Create_More_Help_Decision";
	            character_index = 0;
	            no_one_injured = true;
	            Create_Dialogue("none",Get_Voice(voice_ID),Get_General_Messages(dialogue_ID,"Perma_Death"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else if(lookup_type = "Local"){
	            Create_Dialogue("none",Get_Voice(voice_ID),Get_General_Messages(dialogue_ID,"Invalid_Party"),id,true,true);
	            state = "Create_More_Help_Decision";
	        }
	        else{
	            state = "Get_Next_Character";
	            character_index = 0;
	            no_one_injured = true;
	            Create_Dialogue("none",Get_Voice(voice_ID),Get_General_Messages(dialogue_ID,"Investigate"),id,true,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
	    //===================
	    //Pan In Member List=
	    //===================
	    case "Get_Next_Character":
	        var i = character_index;
	        while(i<global.Number_Of_Characters){
	            if((global.Faction[i] = current_player.faction)&&(Character_Is_Dead(lookup_type,i))){//if character is dead and same faction as player
	                character_index = i;
	                no_one_injured = false;
	                break;
	            }
	            i+= 1;
	        }
        
	        if(i >= global.Number_Of_Characters){//looped through entire list
	            if(no_one_injured){
	                Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Nobody_Dead"),true,true);
	                state = "Create_More_Help_Decision";
	            }
	            else{
	                state = "Create_More_Help_Decision";
	                Pan_Out_Dialogue();
	            }
	        }
	        else{
	            Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Revive_For_X",Get_Character_Name(lookup_type,character_index,"Total"),string(Revival_Cost(lookup_type,character_index,current_npc.revival_cost_modifier))),false,false);
	            state = "Pan_In_Gold_Window";
	        }
	    break;
	    case "Pan_In_Gold_Window":
	        pan_direction = "in";
	        play_pan_sound = true;
	        state = "Create_Decision_Controller";
	    break;
	    case "Create_Decision_Controller":
	        state = "Awaiting_Decision";
	        Create_YesNo_Menu(id);
	    break;
	    case "Awaiting_Decision":
	        if(decision = "Yes"){
	            if(Can_Afford_Cost(Revival_Cost(lookup_type,character_index,current_npc.revival_cost_modifier))){
	                state = "Play_Revive_Sound";
	                pan_direction = "out";
	                play_pan_sound = true;
	            }
	            else{
	                state = "Cant_Afford_Cost";
	                pan_direction = "out";
	                play_pan_sound = true;
	            }
	        }
	        else{
	            pan_direction = "out";
	            play_pan_sound = true;
	            state = "Pan_Out_Gold_Window";
	        }
	    break;
	    case "Cant_Afford_Cost":
	        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cant_Afford"),true,false);
	        character_index += 1;
	        state = "Get_Next_Character";
	    break;
	    case "Pan_Out_Gold_Window":
	        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cancel"),true,false);
	        character_index += 1;
	        state = "Get_Next_Character";
	    break;
	    case "Play_Revive_Sound":
	        Wait_For_Sound(sfx_Revive,obj_Dialogue_Controller);
	        Remove_Gold(Revival_Cost(lookup_type,character_index,current_npc.revival_cost_modifier));
	        Revive_Character(character_index);
	        state = "Wait_For_Revive_Sound";
	    break;
	    case "Wait_For_Revive_Sound":
	        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Character_Revived",Get_Character_Name(lookup_type,character_index,"Total")),true,false);
	        character_index += 1;
	        state = "Get_Next_Character";
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
