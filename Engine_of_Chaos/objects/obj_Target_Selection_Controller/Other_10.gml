//================
//Start Selection=
//================
if(state = "Start"){
    if((action = "Magic")&&(Get_Character_Magic("Local",character,"Total") < Get_Spell_Slot_Stats("Local",character,inventory_slot,inventory_level,"Magic_Cost"))){//not enough mana
        state = "Display_No_Magic_Message";
        event_perform(ev_other,ev_user0);
    }
    else if(number_of_targets != 0){//we have targets
        state = "Cursor_End_Of_Path";
        Look_At_Target(Get_Current_Turn(),targets[current_target]);
        Ready_Cursor_For_Movement(Get_Current_Turn().x,Get_Current_Turn().y);
        Move_Cursor_To_Target(targets[current_target],"Target_Selection");
    }
    else{//no valid targets
        state = "Display_Cancel_Message";
        event_perform(ev_other,ev_user0);
    }
}
//======================
//Cursor Stopped Moving=
//======================
else if(state = "Cursor_End_Of_Path"){
    state = "Pan_In_Target_HUD";
    if(Object_Is_Character(targets[current_target])){
        Create_Battle_HUD(id,targets[current_target],"Show_Target_HUD","Target_Selection");
    }
    else{//They are not a character, dont display HUD
        Play_Sound(sfx_Menu_Swish);
        event_perform(ev_other,ev_user1);
    }
}
//===========
//Pan In HUD=
//===========
else if(state = "Pan_In_Target_HUD"){
    event_perform(ev_other,ev_user1);
}
//============
//Pan Out HUD=
//============
else if(state = "Pan_Out_Target_HUD"){
    state = "Cursor_End_Of_Path";
    Look_At_Target(Get_Current_Turn(),targets[current_target]);
    Move_Cursor_To_Target(targets[current_target],"Target_Selection");
}
//=======================
//Display Cancel Message=
//=======================
else if(state = "Display_Cancel_Message"){
    state = "Cancel_Target_Selection";
    Create_Dialogue(noone,Get_Generic_Voice("Target_Selection"),Get_General_Messages("Target_Selection","No_Targets"),id,true,true);
}
//=========================
//Display No Magic Message=
//=========================
else if(state = "Display_No_Magic_Message"){
    state = "Cancel_Target_Selection";
    Create_Dialogue(noone,Get_Generic_Voice("none"),Get_General_Messages("Target_Selection","Not_Enough_Magic"),id,true,true);
}
//======================
//Pressed Cancel Button=
//======================
else if(state = "Cancel_Button"){
    state = "Cancel_Target_Selection";
    Face_Direction(Get_Current_Turn(),"Down");
    Move_Cursor_To_Target(Get_Current_Turn(),"Cancel_Target_Selection");
    Clear_Target_Range();
    Reset_Cursor_Display();
}
//=====================
//End Target Selection=
//=====================
else if(state = "Cancel_Target_Selection"){
    if(action = "Attack"){
        Clear_Target_Range();
        Reset_Cursor_Display();
    }
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    Set_Camera_Target(Get_Current_Turn());//camera follows active object
    instance_destroy();
}
//=========================
//Confirm Target Selection=
//=========================
else if(state = "Select_Button"){
    //==========
    //Give Item=
    //==========
    if(action = "Give_Item"){
        if(!Inventory_Is_Full("Local",targets[current_target])){//if target's inventory isnt full,
            state = "End_Turn";
            Give_Character_Item("Local",targets[current_target],Get_Item("Local",character,inventory_slot));//transfer item
            Remove_Item("Local",character,inventory_slot);//Delete from other character
            Hide_Cursor();//hide cursor
            Play_Sound(sfx_Menu_Select);
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
        }
        else{
            //pan out HUD
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
            state = "Waiting_For_Item_Selection";
        }
    }
    //==============
    //Attack Target=
    //==============
    else if(action = "Attack"){
        Play_Sound(sfx_Menu_Select);
        Start_Battle_Cutscene(id,"Attack",character,targets[current_target],0,0);
    }
    //===========
    //Cast Spell=
    //===========
    else if(action = "Magic"){
        Play_Sound(sfx_Menu_Select);
        if(Get_Spell_Slot_Stats("Local",character,inventory_slot,inventory_level,"Retreat_From_Battle")){//if this spell causes you to retreat
            state = "Egress_Cutscene";
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    _HUD_exists = true;
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
        }
        else if(Get_Spell_Slot_Stats("Local",character,inventory_slot,inventory_level,"End_Summon")){
            state = "End_Turn";
            character.summoned_turns_remaining = 0;
            Hide_Cursor();
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
        }
        else{
            Start_Battle_Cutscene(id,"Cast_Spell",character,targets[current_target],inventory_slot,inventory_level);
        }
    }
    //=========
    //Use Item=
    //=========
    else if(action = "Use_Item"){
        Play_Sound(sfx_Menu_Select);
        if(Get_Spell_Stats(Get_Inventory_Item_Stats("Local",character,inventory_slot,"Use_Effect"),Get_Inventory_Item_Stats("Local",character,inventory_slot,"Use_Effect_Level"),"Retreat_From_Battle")){
            state = "Egress_Cutscene";
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    _HUD_exists = true;
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
        }
        else{
            Start_Battle_Cutscene(id,"Use_Item",character,targets[current_target],inventory_slot,inventory_level);
        }
    }
}
//========================
//Wait for Item Selection=
//========================
else if(state = "Waiting_For_Item_Selection"){
    Create_Item_Selection_Controller(targets[current_target],id,"Take_Item",character,inventory_slot);
}
//=========
//End Turn=
//=========
else if(state = "End_Turn"){
    Face_Direction(Get_Current_Turn(),"Down");
    Clear_Target_Range();
    Reset_Cursor_Display();
    UI_Cancel_Event(current_object,"Destroy_All_Menus","End_Turn");
    instance_destroy();
}
//=========
//AI Event=
//=========
else if(state = "AI_Event"){
    Play_Sound(sfx_Menu_Select);
    if(action = "AI_Attack"){
        Start_Battle_Cutscene(id,"Attack",character,targets[current_target],0,0);
    }
    else if(action = "AI_Cast_Spell"){
        Start_Battle_Cutscene(id,"Cast_Spell",character,targets[current_target],inventory_slot,inventory_level);
    }
    else if(action = "AI_Use_Item"){
        Start_Battle_Cutscene(id,"Use_Item",character,targets[current_target],inventory_slot,inventory_level);
    }
}
//=====================
//Start Egress Cutscene
//=====================
else if(state = "Egress_Cutscene"){
    if(action = "Magic"){
		Start_Cutscene("Cast_Egress_Battle",character);
    }
    else{
		Start_Cutscene("Use_Egress_Item_Battle",character);
    }
}
















