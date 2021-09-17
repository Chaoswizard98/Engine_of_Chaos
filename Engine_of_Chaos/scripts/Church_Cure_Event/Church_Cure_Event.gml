function Church_Cure_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        if(lookup_type = "Global"){
	            state = "Get_Next_Character";
	            character_index = 0;
	            cure_index = 0;
	            no_one_injured = true;
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Investigate"),id,true,false);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{
	            state = "Create_More_Help_Decision";
	            Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Invalid_Party"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
	    //===================
	    //Pan In Member List=
	    //===================
	    case "Get_Next_Character":
	        var i = character_index;
	        switch(cure_index){
	            case 0://POISONED
	                while(i<global.Number_Of_Characters){
	                    if(Character_Is_Under_Effect(lookup_type,i,"Poison")){
	                        character_index = i;
	                        no_one_injured = false;
	                        break;
	                    }
	                    i+= 1;
	                }
	            break;
	            case 1://PARALYZED
	                while(i<global.Number_Of_Characters){
	                    if(Character_Is_Under_Effect(lookup_type,i,"Paralysis")){
	                        character_index = i;
	                        no_one_injured = false;
	                        break;
	                    }
	                    i+= 1;
	                }
	            break;
	            case 2://CURSED
	                while(i<global.Number_Of_Characters){
	                    if(Character_Is_Cursed(lookup_type,i)){//if character is cursed
	                        character_index = i;
	                        no_one_injured = false;
	                        break;
	                    }
	                    i+= 1;
	                }
	            break;
	        }
	        if(i >= global.Number_Of_Characters){//looped through entire list
	            if(no_one_injured){
	                switch(cure_index){
	                    case 0://POISONED
	                        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Nobody_Poisoned"),true,false);
	                        cure_index += 1;
	                        character_index = 0;
	                        state = "Get_Next_Character";
	                        no_one_injured = true;
	                    break;
	                    case 1://PARALYZED
	                        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Nobody_Paralyzed"),true,false);
	                        cure_index += 1;
	                        character_index = 0;
	                        state = "Get_Next_Character";
	                        no_one_injured = true;
	                    break;
	                    case 2://CURSED
	                        Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Nobody_Cursed"),true,true);
	                        cure_index += 1;
	                        character_index = 0;
	                        state = "Create_More_Help_Decision";//end loop
	                        no_one_injured = true;
	                    break;
	                }
	            }
	            else{
	                switch(cure_index){
	                    case 0://POISONED
	                        state = "Get_Next_Character";
	                        cure_index += 1;
	                        character_index = 0;
	                        no_one_injured = true;
	                        event_perform(ev_other,ev_user0);
	                    break;
	                    case 1://PARALYZED
	                        state = "Get_Next_Character";
	                        cure_index += 1;
	                        character_index = 0;
	                        no_one_injured = true;
	                        event_perform(ev_other,ev_user0);
	                    break;
	                    case 2://CURSED
	                        state = "Create_More_Help_Decision";
	                        cure_index += 1;
	                        character_index = 0;
	                        no_one_injured = true;
	                        Pan_Out_Dialogue();
	                    break;
	                }
	            }
	        }
	        else{
	            switch(cure_index){
	                case 0://POISONED
	                    Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cure_Poison_For_X",Get_Character_Name(lookup_type,character_index,"Total"),string(Cure_Poison_Cost(lookup_type,character_index,current_npc.cure_poison_cost_modifier))),false,false);
	                break;
	                case 1://PARALYZED
	                    Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cure_Paralyzed_For_X",Get_Character_Name(lookup_type,character_index,"Total"),string(Cure_Paralysis_Cost(lookup_type,character_index,current_npc.cure_paralysis_cost_modifier))),false,false);
	                break;
	                case 2://CURSED
	                    Start_New_Dialogue(Get_General_Messages(dialogue_ID,"Cure_Curse_For_X",Get_Character_Name(lookup_type,character_index,"Total"),string(Remove_Cursed_Equipment_Cost(lookup_type,character_index,current_npc.cure_curse_cost_modifier))),false,false);
	                break;
	            }
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
	            var _cost;
	            switch(cure_index){
	                case 0://POISONED
	                    _cost = Cure_Poison_Cost(lookup_type,character_index,current_npc.cure_poison_cost_modifier);
	                break;
	                case 1://PARALYZED
	                    _cost = Cure_Paralysis_Cost(lookup_type,character_index,current_npc.cure_paralysis_cost_modifier);
	                break;
	                case 2://CURSED
	                    _cost = Remove_Cursed_Equipment_Cost(lookup_type,character_index,current_npc.cure_curse_cost_modifier);
	                break;
	            }
	            if(Can_Afford_Cost(_cost)){
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
	        switch(cure_index){
	            case 0://POISONED
	                Wait_For_Sound(sfx_Cure,obj_Dialogue_Controller);
	                Remove_Gold(Cure_Poison_Cost(lookup_type,character_index,current_npc.cure_poison_cost_modifier));
	                Cure_Status_Effect(lookup_type,character_index,"Poison");
	            break;
	            case 1://PARALYZED
	                Wait_For_Sound(sfx_Cure,obj_Dialogue_Controller);
	                Remove_Gold(Cure_Paralysis_Cost(lookup_type,character_index,current_npc.cure_paralysis_cost_modifier));
	                Cure_Status_Effect(lookup_type,character_index,"Paralysis");
	            break;
	            case 2://CURSED
	                Wait_For_Sound(sfx_Cure,obj_Dialogue_Controller);
	                Remove_Gold(Remove_Cursed_Equipment_Cost(lookup_type,character_index,current_npc.cure_curse_cost_modifier));
	                Remove_Cursed_Equipment(lookup_type,character_index);
	            break;
	        }
	        state = "Wait_For_Revive_Sound";
	    break;
	    case "Wait_For_Revive_Sound":
	        switch(cure_index){
	            case 0://POISONED
	                Start_New_Dialogue(Get_General_Messages(dialogue_ID,"No_Longer_Poisoned",Get_Character_Name(lookup_type,character_index,"Total")),true,false);
	            break;
	            case 1://PARALYZED
	                Start_New_Dialogue(Get_General_Messages(dialogue_ID,"No_Longer_Paralyzed",Get_Character_Name(lookup_type,character_index,"Total")),true,false);
	            break;
	            case 2://CURSED
	                Start_New_Dialogue(Get_General_Messages(dialogue_ID,"No_Longer_Cursed",Get_Character_Name(lookup_type,character_index,"Total")),true,false);
	            break;
	        }
	        character_index += 1;
	        state = "Get_Next_Character";
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
