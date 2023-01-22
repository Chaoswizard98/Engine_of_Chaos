//======================
//Keyboard repeat delays
//======================
Input_Repeater();//allows holding a button to auto-scroll through a menu

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
        window_pan += (max_pan / pan_speed);
        if(window_pan >= 0){
            window_pan = 0;
            window_pan_direction = "none";
            allow_interaction = true;
        }
    }
    //pan out
    if(window_pan_direction = "out"){
        window_pan -= (max_pan / pan_speed);
        if(window_pan <= -(max_pan+(max_pan / pan_speed))){
            window_pan = -max_pan;
            window_pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
}

//===========
//Arrow Flash
//===========
if(show_scroll_arrows){
    scroll_arrow_timer -= 1;
    if(scroll_arrow_timer <= 0 ){
        if(scroll_arrow_state = 1){
            scroll_arrow_state = 0;//turn arrow off
            scroll_arrow_timer = 15;
        }
        else{
            scroll_arrow_state = 1;//turn arrow on
            scroll_arrow_timer = 15;
        }
    }
}

if(allow_interaction){//if we are able to use this menu
    if(Pressed_Key("Up_Button",auto_move)){//if up button
        input_event = "Up_Button";//run up event
        if((arrow_position + start_index) != 0){
            for(i = (arrow_position + start_index); i > 0; i -= 1){
                if(!menu_locked[i-1]){
                    Play_Sound(sfx_Menu_Move);
                    arrow_position -= ((arrow_position + start_index)-(i-1));
                    if(arrow_position < 0){
                        start_index = (start_index + arrow_position);
                        arrow_position = 0;
                    }
                    break;
                }
            }
        }
    }
    else if(Pressed_Key("Down_Button",auto_move)){//if down button
        input_event = "Down_Button";//run down event
        if((arrow_position + start_index) != (number_of_menu_options -1)){
            for(i = (arrow_position + start_index); i < (number_of_menu_options -1); i += 1){
                if(!menu_locked[i+1]){
                    Play_Sound(sfx_Menu_Move);
                    arrow_position += ((i+1)-(arrow_position + start_index));
                    if(arrow_position > (max_options_on_screen - 1)){
                        start_index += (arrow_position - (max_options_on_screen - 1));
                        arrow_position = (max_options_on_screen -1);
                    }
                    break;
                }
            }
        }
    }
    else if(Pressed_Key("Select_Button",false)){//if select button
        input_event = "Select_Button";//run select event
        event_perform(ev_other,ev_user0);//run event 1 (user input)
    }
    else if(Pressed_Key("Cancel_Button",false)){//if cancel button
        input_event = "Cancel_Button";//run cancel event
        event_perform(ev_other,ev_user0);
    }
}

