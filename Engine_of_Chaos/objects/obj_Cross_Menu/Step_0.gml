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
}

if(allow_interaction){
    if(Pressed_Key("Up_Button",auto_move)){
        input_event = "Up_Button";
        Cross_Menu_Move("Default");
    }
    else if(Pressed_Key("Left_Button",auto_move)){
        input_event = "Left_Button";
        Cross_Menu_Move("Default");
    }
    else if(Pressed_Key("Right_Button",auto_move)){
        input_event = "Right_Button";
        Cross_Menu_Move("Default");
    }
    else if(Pressed_Key("Down_Button",auto_move)){
        input_event = "Down_Button";
        Cross_Menu_Move("Default");
    }
    else if(Pressed_Key("Select_Button",false)||Pressed_Key("Inspect_Button",false)){
        input_event = "Select_Button";
        allow_interaction = false;
        pan_direction = "right";
        play_pan_sound = true;
    }
    else if(Pressed_Key("Cancel_Button",false)){
        input_event = "Cancel_Button";
        allow_interaction = false;
        pan_direction = "down";
        play_pan_sound = true;
    }
}

