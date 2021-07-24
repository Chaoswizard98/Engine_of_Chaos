//======================
//Keyboard repeat delays
//======================
Input_Repeater();//allows holding a button to auto-scroll through a menu

//==============
//Menu Pan Stuff
//==============
if(pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    //Panning in
    if(pan_direction = "up"){
        pan_y -= pan_speed_up;
        if(pan_y <= 0){
            pan_y = 0;
            pan_direction = "none";
            allow_interaction = true;
        }
    }
    
    if(pan_direction = "left"){
        pan_x -= pan_speed_left;
        if(pan_x <= 0){
            pan_x = 0;
            pan_direction = "none";
            allow_interaction = true;
        }
    }
    //Panning out
    if(pan_direction = "down"){
        pan_y += pan_speed_down;
        if(pan_y >= max_y_pan){
            pan_y = max_y_pan;
            pan_direction = "none";
            event_perform(ev_other,ev_user1);
        }
    }
    if(pan_direction = "right"){
        pan_x += pan_speed_right;
        if(pan_x >= max_x_pan){
            pan_x = max_x_pan;
            pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
    //equip window
    if(pan_direction = "equip_in"){
        equip_pan_x += equip_pan_speed;
        if(equip_pan_x >= 0){
            equip_pan_x = 0;
            pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
    if(pan_direction = "equip_out"){
        equip_pan_x -= equip_pan_speed;
        if(equip_pan_x <= -max_equip_pan_x){
            equip_pan_x = -max_equip_pan_x;
            pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
}

if(allow_interaction){
    //===============
    //Selecting Item=
    //===============
    if(state = "Selecting_Item"){
        if(Pressed_Key("Up_Button",auto_move)){
            input_event = "Up_Button";
            Cross_Menu_Move("Items");
            if(action = "Use_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Use_Range"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Use_Range"),"Use_Item",true);
            }
            else if(action = "Give_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),1,0,"Give_Item",true);
            }
            else if(action = "Equip_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
            }
        }
        else if(Pressed_Key("Left_Button",auto_move)){
            input_event = "Left_Button";
            Cross_Menu_Move("Items");
            if(action = "Use_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Use_Range"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Use_Range"),"Use_Item",true);
            }
            else if(action = "Give_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),1,0,"Give_Item",true);
            }
            else if(action = "Equip_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
            }
        }
        else if(Pressed_Key("Right_Button",auto_move)){
            input_event = "Right_Button";
            Cross_Menu_Move("Items");
            if(action = "Use_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Use_Range"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Use_Range"),"Use_Item",true);
            }
            else if(action = "Give_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),1,0,"Give_Item",true);
            }
            else if(action = "Equip_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
            }
        }
        else if(Pressed_Key("Down_Button",auto_move)){
            input_event = "Down_Button";
            Cross_Menu_Move("Items");
            if(action = "Use_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Use_Range"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Use_Range"),"Use_Item",true);
            }
            else if(action = "Give_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),1,0,"Give_Item",true);
            }
            else if(action = "Equip_Item"){
                Clear_Target_Range(); 
                Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
            }
        }
        else if(Pressed_Key("Select_Button",false)||Pressed_Key("Inspect_Button",false)){
            input_event = "Select_Button";
            allow_interaction = false;
            pan_direction = "right";
            play_pan_sound = true;
            Play_Sound(sfx_Menu_Select);
            if(action = "Drop_Item"){
                state = "Display_Drop_Message";
            }
            else{
                state = "Target_Selection";
            }
        }
        else if(Pressed_Key("Cancel_Button",false)){
            input_event = "Cancel_Button";
            allow_interaction = false;
            if(action = "Equip_Item"){
                equip_slot -= 1;
                while(equip_slot >= 0){//check to see if we can equip something in each slot
                    if(Has_Equippable_Item("Local",current_character,equip_slot)){//if we can equip to this slot,
                        pan_direction = "down";
                        play_pan_sound = true;
                        state = "Reverse_Equip";
                        break;
                    }
                    else{
                        equip_slot -= 1;
                    }
                }
                if(equip_slot < 0){
                    Clear_Target_Range(); 
                    state = "Cancel_Equip";
                    pan_direction = "equip_out";
                    play_pan_sound = true;
                }
            }
            else{
                pan_direction = "down";
                play_pan_sound = true;
                if(action != "Take_Item"){
                    Clear_Target_Range();
                }
            }
        }
    }
}

