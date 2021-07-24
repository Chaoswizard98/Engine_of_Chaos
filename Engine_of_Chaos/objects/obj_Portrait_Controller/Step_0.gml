if(pan_direction != "none"){
    if(play_pan_sound){
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    if(pan_direction = "in"){//Pan Portrait In
        if(display_type = "Dialogue"){
            pan_y -= (max_dialogue_y_pan / pan_speed);
        }
        else if(display_type = "Status_Page"){
            pan_x -= (max_status_x_pan / pan_speed);
            pan_y -= (max_status_y_pan / pan_speed);
        }
        else if(display_type = "Member_List"){
            pan_x -= (max_member_list_x_pan / pan_speed);
            pan_y -= (max_member_list_y_pan / pan_speed);
        }
        else if(display_type = "Character_Creation"){
            pan_x -= (max_character_creation_x_pan / pan_speed);
            pan_y -= (max_character_creation_y_pan / pan_speed);
        }
        if((pan_x <= 0) && (pan_y <= 0)){
            pan_x = 0;
            pan_y = 0;
            pan_direction = "none";
            event = "Panned_In";
            event_perform(ev_other,ev_user0);
        }
    }
    else if(pan_direction = "out"){ //Pan Portrait Out
        var _done = false;
        if(display_type = "Dialogue"){
            pan_y += (max_dialogue_y_pan / pan_speed);
            if(pan_y >= max_dialogue_y_pan){
                _done = true;;
            }
        }
        else if(display_type = "Status_Page"){
            pan_x += (max_status_x_pan / pan_speed);
            pan_y += (max_status_y_pan / pan_speed);
            if((pan_x >= max_status_x_pan) && (pan_y >= max_status_y_pan)){
                _done = true;
            }
        }
        else if(display_type = "Member_List"){
            pan_x += (max_member_list_x_pan / pan_speed);
            pan_y += (max_member_list_y_pan / pan_speed);
            if((pan_x >= max_member_list_x_pan) && (pan_y >= max_member_list_y_pan)){
                _done = true;
            }
        }
        else if(display_type = "Character_Creation"){
            pan_x += (max_character_creation_x_pan / pan_speed);
            pan_y += (max_character_creation_y_pan / pan_speed);
            if((pan_x >= max_character_creation_x_pan) && (pan_y >= max_character_creation_y_pan)){
                _done = true;
            }
        }
        if(_done){
            pan_direction = "none";
            if(event != "Persist"){//if we arent persisting
                instance_destroy();//destroy the object
            }
        }
    }
}

else if(portrait != noone){
    if((!talking) && (talk_frame < 1)){//for pauses at lower speeds
        talk_frame = 0;//reset talk frame
    }
    else if((talk_frame != 0) || (talking)){//if we are talking, or we havent reached end of animation yet
        talk_frame += (talk_speed * talk_speed_modifier);//increase frame based on speed
        if(talk_frame > sprite_get_number(portrait)){//if we hit end of animation
            talk_frame = 0;//reset talk frame
        }
    }
    
    if(!blinking){//if we are not blinking
        blink_timer -= 1;//count down timer
        if(blink_timer <= 0){//if we hit 0,
            blinking = true;//start blinking
        }
    }
    else {//we are currently blinking
        blink_frame += blink_speed;//update frame based on animation speed
        if(blink_frame > sprite_get_number(portrait_blink)){//if we reach end of blink animation
            blink_frame = 0;//reset frame to 0
            blink_timer = random_range(blink_min,blink_max);//reset blink timer
            blinking = false;//no longer blinking
        }
    }
}

