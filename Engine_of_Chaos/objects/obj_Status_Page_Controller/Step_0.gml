if(pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    if(pan_direction = "page out"){//Next Page part 1
        page_window_pan += (max_page_window_pan / pan_speed);
        if(page_window_pan >= max_page_window_pan){
            pan_direction = "page in";
            play_pan_sound = true;
            if(input_event = "next page"){//next page
                input_event = "none";
                page_number += 1;
            }
            else if(input_event = "previous page"){//previous page
                input_event = "none";
                page_number -= 1;
            }
        }
    }
    else if(pan_direction = "page in"){//Next page part 2
        page_window_pan -= (max_page_window_pan / pan_speed);
        if(page_window_pan <= 0){
            pan_direction = "none";
            page_window_pan = 0;
            allow_interaction = true;
        }
    }
    else if(pan_direction = "in"){//pan entire controller in
        page_window_pan -= (max_page_window_pan / pan_speed);
        sidebar_window_pan -= (max_sidebar_window_pan / pan_speed);
        gold_window_pan_x -= (max_gold_window_pan_x / pan_speed);
        gold_window_pan_y -= (max_gold_window_pan_y / pan_speed);
        if(page_window_pan <= 0){
            pan_direction = "none";
            page_window_pan = 0;
            sidebar_window_pan = 0;
            gold_window_pan_x = 0;
            gold_window_pan_y = 0;
            allow_interaction = true;
        }
    }
    else if(pan_direction = "out"){//pan entire controller out
        page_window_pan += (max_page_window_pan / pan_speed);
        sidebar_window_pan += (max_sidebar_window_pan / pan_speed);
        gold_window_pan_x += (max_gold_window_pan_x / pan_speed);
        gold_window_pan_y += (max_gold_window_pan_y / pan_speed);
        if(page_window_pan >= max_page_window_pan){
            pan_direction = "none";
            UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
            instance_destroy();
        }
    }
    
}

if(allow_interaction){
    if(Pressed_Key("Right_Button",false)){
        if(page_number < (number_of_pages - 1)){
            pan_direction = "page out";
            allow_interaction = false;
            play_pan_sound = true;
            input_event = "next page";
        }
    }
    if(Pressed_Key("Left_Button",false)){
        if(page_number != 0){
            pan_direction = "page out";
            allow_interaction = false;
            play_pan_sound = true;
            input_event = "previous page";
        }
    }
    else if(Pressed_Key("Cancel_Button",false)){
        pan_direction = "out";
        allow_interaction = false;
        play_pan_sound = true;
        if(portrait_controller != noone){
            with(portrait_controller){
                pan_direction = "out";
            }
        }
    }
}

