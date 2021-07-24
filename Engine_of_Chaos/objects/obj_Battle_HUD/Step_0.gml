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
        window_pan -= (max_pan / pan_speed);
        if(window_pan <= 0){
            window_pan = 0;
            window_pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
    //pan out
    if(window_pan_direction = "out"){
        window_pan += (max_pan / pan_speed);
        if(window_pan >= max_pan + (max_pan / pan_speed)){
            window_pan = max_pan;
            window_pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
}

