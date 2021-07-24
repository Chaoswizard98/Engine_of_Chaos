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
        window_pan -= pan_speed;
        if(window_pan <= 0){
            window_pan = 0;
            window_pan_direction = "none";
            allow_interaction = true;
        }
    }
    //pan out
    if(window_pan_direction = "out"){
        window_pan -= pan_speed;
        if(window_pan <= -(max_pan + pan_speed)){
            window_pan = -max_pan;
            window_pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
}

//===========
//Arrow Flash
//===========
if(show_markers){
    marker_flash_timer -= 1;
    if(marker_flash_timer <= 0 ){
        if(marker_flash_state = 1){
            marker_flash_state = 0;//turn markers off
            marker_flash_timer = max_flash_time;
        }
        else{
            marker_flash_state = 1;//turn markers on
            marker_flash_timer = max_flash_time;
        }
    }
}

if(allow_interaction){
    if(Pressed_Key("Select_Button",false)||Pressed_Key("Cancel_Button",false)){
        allow_interaction = false;
        window_pan_direction = "out";
        play_pan_sound = true;
    }
}

