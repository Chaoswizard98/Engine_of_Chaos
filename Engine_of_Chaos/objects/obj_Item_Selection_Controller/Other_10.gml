if(state = "Start"){
    if(Get_Item("Local",current_character,0) = "none"){//character has no items
        state = "Display_Cancel_Message";
        event_perform(ev_other,ev_user0);
    }
    else if((current_character.is_summon)&&(action = "Give_Item")){//dont allow summoned units to give items
        state = "Display_Cancel_Summon_Give_Message";
        event_perform(ev_other,ev_user0);
    }
    else{//character has items
        if(action != "Equip_Item"){
            //pan in menu
            state = "Selecting_Item";
            display = true;
            pan_y = max_y_pan;
            pan_direction = "up";
            number_of_menu_options = 4;//Number of menu options
            play_pan_sound = true;
        }
        if(action = "Use_Item"){
            Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Use_Range"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Use_Range"),"Use_Item",true);
        }
        else if(action = "Give_Item"){
            Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),1,0,"Give_Item",true);
        }
        else if(action = "Equip_Item"){
            while(equip_slot < global.Number_Of_Equipment_Slots){//check to see if we can equip something in each slot
                if(Has_Equippable_Item("Local",current_character,equip_slot)){//if we can equip to this slot,
                    state = "Start_2";
                    equip_pan_x = -max_equip_pan_x;
                    pan_direction = "equip_in";
                    play_pan_sound = true;
                    display = true;
                    current_index = 0;
                    Fill_Equip_Array(id,current_character,equip_slot);
                    Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
                    break;//break loop
                }
                else{
                    equip_slot += 1;
                }
            }
            if(equip_slot >= global.Number_Of_Equipment_Slots){
                state = "Display_Cancel_Equip_Message";
                event_perform(ev_other,ev_user0);
            }
        }
    }
}
else if(state = "Start_2"){
    //pan in menu
    state = "Selecting_Item";
    display = true;
    pan_y = max_y_pan;
    pan_direction = "up";
    number_of_menu_options = 4;//Number of menu options
    play_pan_sound = true;
}

else if(state = "Display_Cancel_Message"){
    state = "Cancel_Item_Selection";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","No_Items"),id,true,true);
}
else if(state = "Display_Cancel_Summon_Give_Message"){
    state = "Cancel_Item_Selection";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","Cancel_Summon_Give"),id,true,true);
}
else if(state = "Display_Cancel_Equip_Message"){
    state = "Cancel_Item_Selection";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","No_Equippable_Items"),id,true,true);
}

else if(state = "Cancel_Item_Selection"){
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();
}

else if(state = "Target_Selection"){
    if(action = "Use_Item"){
        Create_Target_Selection_Controller(current_character,"Use_Item",id,inventory_slot[current_index]);
    }
    else if(action = "Give_Item"){
        if(Character_Is_Cursed_By_This_Item("Local",current_character,inventory_slot[current_index])){
            state = "Cancel_Give_Cursed";
            Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","Cancel_Give_Cursed",string(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Item_Name"))),id,false,true);
            Stop_Dialogue_Interaction();
            Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
        }
        else{
            Create_Target_Selection_Controller(current_character,"Give_Item",id,inventory_slot[current_index]);
        }
    }
    else if(action = "Take_Item"){
        if(Character_Is_Cursed_By_This_Item("Local",current_character,inventory_slot[current_index])){
            state = "Cancel_Give_Cursed";
            Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","Cancel_Give_Cursed",string(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Item_Name"))),id,false,true);
            Stop_Dialogue_Interaction();
            Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
        }
        else{
            state = "End_Turn";
            //save items
            var _item1 = Get_Item("Local",current_character,inventory_slot[current_index]);
            var _item2 = Get_Item("Local",target_character,target_inventory_slot);
            //Clear items
            Remove_Item("Local",current_character,inventory_slot[current_index]);//Taker
            Remove_Item("Local",target_character,target_inventory_slot);//Giver
            //Trade items
            Give_Character_Item("Local",target_character,_item1);//transfer item
            Give_Character_Item("Local",current_character,_item2);//transfer item
            
            Hide_Cursor();//hide cursor
            Play_Sound(sfx_Menu_Select);
            Face_Direction(Get_Current_Turn(),"Down");
            Clear_Target_Range(); 
            
            UI_Cancel_Event(current_object,"Destroy_All_Menus","End_Turn");
            instance_destroy();
        }
    }
    else if(action = "Equip_Item"){
        if(Character_Is_Cursed_By_This_Item("Local",current_character,Get_Equipped_Item_Slot("Local",current_character,equip_slot))&&(!Has_Item_Slot_Equipped("Local",current_character,inventory_slot[current_index]))){//if they are cursed, and we arent equipping our current item, prevent changing equipment
            pan_direction = "equip_out";
            play_pan_sound = true;
            state = "Cancel_Equip_Cursed";
        }
        else{//normal equip
            var _was_cursed = false;
            Clear_Target_Range(); 
            if(inventory_slot[current_index] = -2){//if we choose 'remove'
                Equip_Item("Local",current_character,equip_slot,-1);//Clear the equipped item
            }
            else{
                if(!Has_Item_Slot_Equipped("Local",current_character,inventory_slot[current_index])&&(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Curse_Type")!="none")){//if this item curses us
                    _was_cursed = true;
                }
                Equip_Item("Local",current_character,equip_slot,inventory_slot[current_index]);//Equip the item
            }
            if(_was_cursed){
                pan_direction = "equip_out";
                play_pan_sound = true;
                state = "Equip_Cursed";
            }
            else{
                equip_slot += 1;
                while(equip_slot < global.Number_Of_Equipment_Slots){//check to see if we can equip something in each slot
                    if(Has_Equippable_Item("Local",current_character,equip_slot)){//if we can equip to this slot,
                        state = "Selecting_Item";
                        display = true;
                        pan_y = max_y_pan;
                        pan_x = 0;
                        pan_direction = "up";
                        number_of_menu_options = 4;//Number of menu options
                        play_pan_sound = true;
                        current_index = 0;
                        Fill_Equip_Array(id,current_character,equip_slot);
                        Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
                        break;//break loop
                    }
                    else{
                        equip_slot += 1;
                    }
                }
                if(equip_slot >= global.Number_Of_Equipment_Slots){
                    state = "End_Equip";
                    pan_direction = "equip_out";
                    play_pan_sound = true;
                }
            }
        }
    }
}
else if(state = "Cancel_Give_Cursed"){
    pan_direction = "left";
    play_pan_sound = true;
    state = "Selecting_Item";
}
else if(state = "Cancel_Equip_Cursed"){
    state = "Cancel_Equip_Cursed_2";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","Cancel_Equip_Cursed"),id,false,true);
    Stop_Dialogue_Interaction();
    Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
}
else if(state = "Cancel_Equip_Cursed_2"){
    state = "Cancel_Give_Cursed";
    pan_direction = "equip_in";
    play_pan_sound = true;
}
else if(state = "Equip_Cursed"){
    state = "Equip_Cursed_2";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","Character_Was_Cursed",Get_Character_Name("Local",current_character,"Total")),id,false,true);
    Stop_Dialogue_Interaction();
    Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
}
else if(state = "Equip_Cursed_2"){
    equip_slot += 1;
    while(equip_slot < global.Number_Of_Equipment_Slots){//check to see if we can equip something in each slot
        if(Has_Equippable_Item("Local",current_character,equip_slot)){//if we can equip to this slot,
            state = "Equip_Cursed_3";
            pan_direction = "equip_in";
            play_pan_sound = true;
            current_index = 0;
            Fill_Equip_Array(id,current_character,equip_slot);
            Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
            break;//break loop
        }
        else{
            equip_slot += 1;
        }
    }
    if(equip_slot >= global.Number_Of_Equipment_Slots){
        state = "End_Equip";
        event_perform(ev_other,ev_user0);
    }
}
else if(state = "Equip_Cursed_3"){
    state = "Selecting_Item";
    display = true;
    pan_y = max_y_pan;
    pan_x = 0;
    pan_direction = "up";
    number_of_menu_options = 4;//Number of menu options
    play_pan_sound = true;
}
else if(state = "Display_Drop_Message"){
    state = "Display_Decision_Controller";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Item_Selection","Discard_Item?",string(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Item_Name"))),id,false,true);
}
else if(state = "Display_Decision_Controller"){
    state = "Waiting_For_Decision";
    Create_YesNo_Menu(id);
}
else if(state = "Waiting_For_Decision"){
    if(decision = "Yes"){
        state = "Cancel_Item_Selection";
        if(Character_Is_Cursed_By_This_Item("Local",current_character,inventory_slot[current_index])){
            Append_Dialogue(Get_General_Messages("Item_Selection","Cancel_Drop_Cursed",string(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Item_Name"))),true,true);
            Stop_Dialogue_Interaction();
            Wait_For_Sound(sfx_Cursed,obj_Dialogue_Controller);
        }
        else{
            Append_Dialogue(Get_General_Messages("Item_Selection","Item_Was_Discarded",string(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Item_Name"))),true,true);
            Remove_Item("Local",current_character,inventory_slot[current_index]);//remove item
        }
    }
    else{
        Pan_Out_Dialogue();
        state = "Cancel_Drop_Item";
    }
}
else if(state = "Cancel_Drop_Item"){
    pan_direction = "left";
    play_pan_sound = true;
    state = "Selecting_Item";
}
else if(state = "Cancel_Equip"){
    pan_direction = "down";
    play_pan_sound = true;
}
else if(state = "End_Equip"){
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();
}

