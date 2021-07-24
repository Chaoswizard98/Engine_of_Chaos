//======================
//Keyboard repeat delays
//======================
Input_Repeater();
//Pans
if(pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    if(pan_direction = "in"){
        if(pan >= 0){
            pan -= (max_pan / pan_speed);
            if(pan <= 0){
                pan = 0;
                pan_direction = "none";
                allow_interaction = true;
            }
        }
    }
    else if(pan_direction = "out"){
        if(pan >= -max_pan){
            pan -= (max_pan / pan_speed);
            if(pan <= -(max_pan + (max_pan / pan_speed))){
                pan = -max_pan;
                pan_direction = "none";
                current_object.decision = menu_action[menu_index];//tell current object the decision
                with(current_object){
                    event_perform(ev_other, ev_user14);//run CO's event 14
                }
                instance_destroy();//destroy this object
            }
        }
    }
}

//Key Event Listeners
if(allow_interaction){
    if(Pressed_Key("Left_Button",auto_move)){
        Play_Sound(sfx_Menu_Move);
        if(menu_index > 0){
            menu_index -= 1;
        }
    }
    else if(Pressed_Key("Right_Button",auto_move)){
        Play_Sound(sfx_Menu_Move);
        if(menu_index < (number_of_icons - 1)){
            menu_index += 1;
        }
    }
    else if(Pressed_Key("Select_Button",false)||Pressed_Key("Inspect_Button",false)){
        allow_interaction = false;
        Play_Sound(sfx_Menu_Select);
        play_pan_sound = true;
        pan_direction = "out";
    }
    else if(Pressed_Key("Cancel_Button",false)){
        if(default_cancel_option != -1){
            allow_interaction = false;
            menu_index = default_cancel_option; 
            Play_Sound(sfx_Menu_Select);
            play_pan_sound = true;
            pan_direction = "out";
        }
    }
}

