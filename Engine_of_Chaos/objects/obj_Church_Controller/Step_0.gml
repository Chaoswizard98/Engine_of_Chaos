if(pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    //pan in
    if(pan_direction = "in"){
        pan -= (max_pan / pan_speed);
        if(pan <= 0){
            pan = 0;
            pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
    //pan out
    if(pan_direction = "out"){
        pan += (max_pan / pan_speed);
        if(pan >= max_pan + (max_pan / pan_speed)){
            pan = max_pan;
            pan_direction = "none";
            event_perform(ev_other,ev_user0);
        }
    }
}

