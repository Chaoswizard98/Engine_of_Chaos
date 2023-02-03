//======================
//Keyboard repeat delays
//======================
Input_Repeater();

//==========
//Scrolling=
//==========
if(scrolling){
    if(scroll_direction = "down"){
        y_scroll -= 4;
        if(y_scroll <= 0){
            y_scroll = 0;
            scrolling = false;
            scroll_direction = "none";
        }
    }
    else if(scroll_direction = "up"){
        y_scroll += 4;
        if(y_scroll >= 0){
            y_scroll = 0;
            scrolling = false;
            scroll_direction = "none";
        }
    }
}

if(pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    if(pan_direction = "in"){//pan entire controller in
        top_window_pan_x -= (max_top_window_pan_x / pan_speed);
        top_window_pan_y -= (max_top_window_pan_y / pan_speed);
        bottom_window_pan -= (max_bottom_window_pan / pan_speed);
        if(top_window_pan_x <= 0){
            pan_direction = "none";
            top_window_pan_x = 0;
            top_window_pan_y = 0;
            bottom_window_pan = 0;
            allow_interaction = true;
        }
    }
    else if(pan_direction = "out"){//pan entire controller out
        top_window_pan_x += (max_top_window_pan_x / pan_speed);
        top_window_pan_y += (max_top_window_pan_y / pan_speed);
        bottom_window_pan += (max_bottom_window_pan / pan_speed);
        if(top_window_pan_x >= max_top_window_pan_x){
            pan_direction = "none";
            top_window_pan_x = max_top_window_pan_x;
            top_window_pan_y = max_top_window_pan_y;
            bottom_window_pan = max_bottom_window_pan;
            event_perform(ev_other,ev_user0);
        }
    }
    else if(pan_direction = "top_out"){
        top_window_pan_x += (max_top_window_pan_x / pan_speed);
        if(top_window_pan_x >= max_top_window_pan_x){
            pan_direction = "none";
            top_window_pan_x = max_top_window_pan_x;
            event_perform(ev_other,ev_user0);
        }
    }
    else if(pan_direction = "top_in"){//pan entire controller in
        top_window_pan_x -= (max_top_window_pan_x / pan_speed);
        if(top_window_pan_x <= 0){
            pan_direction = "none";
            top_window_pan_x = 0;
            allow_interaction = true;
        }
    }
}

if(allow_interaction && !scrolling){
    //UP
    if(Pressed_Key("Up_Button",auto_move)){//if up button
        if((state = "Selecting_Character")||(state = "Selecting_Target_Character")){
            if(index != 0){//if we can move the cursor up
                index -= 1;//move cursor up
                Play_Sound(sfx_Menu_Move);
            }
            else if(start_index != 0){//if we have to shift the list up
                start_index -= 1;
                scrolling = true;
                scroll_direction = "up";
                y_scroll = -character_index_offset_y;
                Play_Sound(sfx_Menu_Move);
            }
            var _portrait_ID;
            _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
            Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
        }
        else if((state = "Selecting_Item")||(state = "Selecting_Trade_Item")){
            if(Get_Item(lookup_type,character_list[start_index + index],0)!= "none"){//if the character doesnt have any items
                item_index = 0;
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell"){
            if(Get_Spell_Level(lookup_type,character_list[start_index + index],0)!= 0){//if the character doesnt have any items
                item_index = 0;
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell_Level"){
            selected_spell_level += 1;
            if(selected_spell_level > Get_Spell_Level(lookup_type,character_list[start_index + index],selected_item_slot)){
                selected_spell_level = 1;
            }
            Play_Sound(sfx_Menu_Move);
        }
    }
    //DOWN
    else if(Pressed_Key("Down_Button",auto_move)){//if down button
        if((state = "Selecting_Character")||(state = "Selecting_Target_Character")){
            if((index != (max_characters_displayed -1))&&(index < (number_of_characters -1))){//if we can move the cursor up
                index += 1;//move cursor up
                Play_Sound(sfx_Menu_Move);
            }
            else if(start_index + max_characters_displayed < (number_of_characters)){//if we have to shift the list up
                start_index += 1;
                scrolling = true;
                scroll_direction = "down";
                y_scroll = character_index_offset_y;
                Play_Sound(sfx_Menu_Move);
            }
            var _portrait_ID;
            _portrait_ID = Get_Character_Portrait(lookup_type,character_list[start_index + index],"Total");//get correct portrait (test for overrides)
            Update_Portrait_Controller(portrait_controller,_portrait_ID,Character_Is_Dead(lookup_type,character_list[start_index + index]));//set sprite of portrait controller to new character
        }
        else if((state = "Selecting_Item")||(state = "Selecting_Trade_Item")){
            if(action = "Equip_Item"){
                item_index = 3;
            }
            else{
                if(Get_Item(lookup_type,character_list[start_index + index],3)!= "none"){//if the character doesnt have any items
                    item_index = 3;
                }
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell"){
            if(Get_Spell_Level(lookup_type,character_list[start_index + index],3)!= 0){//if the character doesnt have any items
                item_index = 3;
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell_Level"){
            selected_spell_level -= 1;
            if(selected_spell_level <= 0){
                selected_spell_level = Get_Spell_Level(lookup_type,character_list[start_index + index],selected_item_slot);
            }
            Play_Sound(sfx_Menu_Move);
        }
    }
    //LEFT
    else if(Pressed_Key("Left_Button",auto_move)){//if left button
        if((state = "Selecting_Character")||(state = "Selecting_Target_Character")){
            Play_Sound(sfx_Menu_Move);
            if(stats_page <= 0){
                stats_page = number_of_stat_pages -1;
            }
            else{
                stats_page -= 1;
            }
        }
        else if((state = "Selecting_Item")||(state = "Selecting_Trade_Item")){
            if(action = "Equip_Item"){
                if(item_array[1] != -1){
                    item_index = 1;
                }
            }
            else{
                if(Get_Item(lookup_type,character_list[start_index + index],1)!= "none"){//if the character doesnt have any items
                    item_index = 1;
                }
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell"){
            if(Get_Spell_Level(lookup_type,character_list[start_index + index],1)!= 0){//if the character doesnt have any items
                item_index = 1;
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell_Level"){
            selected_spell_level -= 1;
            if(selected_spell_level <= 0){
                selected_spell_level = Get_Spell_Level(lookup_type,character_list[start_index + index],selected_item_slot);
            }
            Play_Sound(sfx_Menu_Move);
        }
    }
    //RIGHT
    else if(Pressed_Key("Right_Button",auto_move)){//if right button
        if((state = "Selecting_Character")||(state = "Selecting_Target_Character")){
            Play_Sound(sfx_Menu_Move);
            if(stats_page >= (number_of_stat_pages -1)){
                stats_page = 0;
            }
            else{
                stats_page += 1;
            }
        }
        else if((state = "Selecting_Item")||(state = "Selecting_Trade_Item")){
            if(action = "Equip_Item"){
                if(item_array[2] != -1){
                    item_index = 2;
                }
            }
            else{
                if(Get_Item(lookup_type,character_list[start_index + index],2)!= "none"){//if the character doesnt have any items
                    item_index = 2;
                }
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell"){
            if(Get_Spell_Level(lookup_type,character_list[start_index + index],2)!= 0){//if the character doesnt have any items
                item_index = 2;
            }
            Play_Sound(sfx_Menu_Move);
        }
        else if(state = "Selecting_Spell_Level"){
            selected_spell_level += 1;
            if(selected_spell_level > Get_Spell_Level(lookup_type,character_list[start_index + index],selected_item_slot)){
                selected_spell_level = 1;
            }
            Play_Sound(sfx_Menu_Move);
        }
    }
    //BACK
    else if(Pressed_Key("Cancel_Button",false)){//if cancel button
        input_event = "Cancel_Button";
        event_perform(ev_other,ev_user0);
    }
    //SELECT
    else if(Pressed_Key("Select_Button",false)){//if select button
        input_event = "Select_Button";
        event_perform(ev_other,ev_user0);
    }
}


