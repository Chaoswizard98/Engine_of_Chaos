//===================
//Main Menu Pan Stuff
//===================
if(window_pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    //pan in
    if(window_pan_direction = "in"){
        character_name_window_pan_x -= (max_character_name_window_pan_x / pan_speed);
        character_name_window_pan_y -= (max_character_name_window_pan_y / pan_speed);
        name_character_window_pan -= (max_name_character_window_pan / pan_speed);
        if(name_character_window_pan <= 0){
            window_pan_direction = "none";
            character_name_window_pan_x = 0;
            character_name_window_pan_y = 0;
            name_character_window_pan = 0;
            allow_interaction = true;
        }
    }
    //pan out
    if(window_pan_direction = "out"){
        character_name_window_pan_x += floor(max_character_name_window_pan_x / pan_speed);
        character_name_window_pan_y += floor(max_character_name_window_pan_y / pan_speed);
        name_character_window_pan += floor(max_name_character_window_pan / pan_speed);
        if(name_character_window_pan >= max_name_character_window_pan){
            window_pan_direction = "none";
            character_name_window_pan_x = max_character_name_window_pan_x;
            character_name_window_pan_y = max_character_name_window_pan_y;
            name_character_window_pan = max_name_character_window_pan;
            event_perform(ev_other,ev_user0);
        }
    }
}

//======================
//Keyboard repeat delays
//======================
if(allow_interaction){
    Input_Repeater();
}

//===========
//Arrow Flash
//===========
cursor_flash_timer -= 1;
if(cursor_flash_timer <= 0 ){
    if(cursor_flash_state = 1){
        cursor_flash_state = 0;//turn arrow off
        cursor_flash_timer = 15;//reset flash time
    }
    else{
        cursor_flash_state = 1;//turn arrow on
        cursor_flash_timer = 15;//reset flash time
    }
}

if(allow_interaction){//if we are able to use this menu
    if(Pressed_Key("Up_Button",auto_move)&&(current_character != max_letters)){
        input_event = "Up_Button";
        Play_Sound(sfx_Menu_Move);
        event_perform(ev_other,ev_user0);
    }
    else if(Pressed_Key("Down_Button",auto_move)&&(current_character != max_letters)){
        input_event = "Down_Button";
        Play_Sound(sfx_Menu_Move);
        event_perform(ev_other,ev_user0);
    }
    else if(Pressed_Key("Left_Button",auto_move)){
        input_event = "Left_Button";
        Play_Sound(sfx_Menu_Move);
        event_perform(ev_other,ev_user0);
    }
    else if(Pressed_Key("Right_Button",auto_move)){
        input_event = "Right_Button";
        Play_Sound(sfx_Menu_Move);
        event_perform(ev_other,ev_user0);
    }
    else if(Pressed_Key("Select_Button",false)){
        input_event = "Select_Button";
        event_perform(ev_other,ev_user0);
    }
    else if(Pressed_Key("Cancel_Button",false)){
        input_event = "Cancel_Button";
        event_perform(ev_other,ev_user0);
    }
}

