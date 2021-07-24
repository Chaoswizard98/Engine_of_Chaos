if(allow_interaction && (scrolling_page_direction = "none")){
    if(Pressed_Key("Right_Button",auto_move)){
        if((page_number < (number_of_pages -1))||(item_index < ((number_of_items - (page_number*items_per_page))-1))){
            Play_Sound(sfx_Menu_Move);
            item_index += 1;
            if(item_index >= items_per_page){
                item_index = 0;
                page_number += 1;
                item_scroll_timer = item_scroll_max;
                scrolling_page_direction = "down";
            }
        }
    }
    else if(Pressed_Key("Left_Button",auto_move)){
        if((page_number > 0)||(item_index > 0)){
            Play_Sound(sfx_Menu_Move);
            item_index -= 1;
            if(item_index < 0){
                item_index = (items_per_page -1);
                page_number -= 1;
                item_scroll_timer = item_scroll_max;
                scrolling_page_direction = "up";
            }
        }
    }
    else if(Pressed_Key("Up_Button",auto_move)){
        if(page_number > 0){
            Play_Sound(sfx_Menu_Move);
            page_number -= 1;
            item_scroll_timer = item_scroll_max;
            scrolling_page_direction = "up";
            
        }
    }
    else if(Pressed_Key("Down_Button",auto_move)){
        if(page_number < (number_of_pages -1)){
            Play_Sound(sfx_Menu_Move);
            page_number += 1;
            item_scroll_timer = item_scroll_max;
            scrolling_page_direction = "down";
            if(item_index > ((number_of_items - (page_number*items_per_page))-1)){
                item_index = ((number_of_items - (page_number*items_per_page))-1);
            }
        }
    }
    else if(Pressed_Key("Select_Button",false)){
        input_event = "Select_Button";
        allow_interaction = false;
        event_perform(ev_other,ev_user0);
    }
    else if(Pressed_Key("Cancel_Button",false)){
        input_event = "Cancel_Button";
        allow_interaction = false;
        event_perform(ev_other,ev_user0);
    }
}

//======================
//Keyboard repeat delays
//======================
Input_Repeater();

//Arrow Flash
arrow_flash_timer -= 1;
if(arrow_flash_timer <= 0){
    if(arrow_flash = 0){
        arrow_flash = 1;
    }
    else{
        arrow_flash = 0;
    }
    arrow_flash_timer = arrow_flash_speed;
}

//Cursor Flash
cursor_flash_timer -= 1;
if(cursor_flash_timer <= 0){
    if(cursor_flash = 0){
        cursor_flash = 1;
    }
    else{
        cursor_flash = 0;
    }
    cursor_flash_timer = cursor_flash_speed;
}


//item page scroll
if(scrolling_page_direction != "none"){
    item_scroll_timer -= item_scroll_speed;
    if(item_scroll_timer <= 0){
        item_scroll_timer = 0;
        scrolling_page_direction = "none";
    }
}

if(pan_direction != "none"){
    if(play_pan_sound){//play pan sound on first step of pan event
        play_pan_sound = false;
        Play_Sound(sfx_Menu_Swish);
    }
    if(pan_direction = "in"){
        shop_window_pan -= (max_shop_window_pan / pan_speed);
        gold_window_pan -= (max_gold_window_pan / pan_speed);
        item_window_pan -= ((max_item_window_pan + (item_index*index_offset))/(pan_speed));
        if(shop_window_pan <= 0){
            pan_direction = "none";
            shop_window_pan = 0;
            gold_window_pan = 0;
            item_window_pan = 0;
            allow_interaction = true;
        }
    }
    else if(pan_direction = "out"){
        shop_window_pan += (max_shop_window_pan / pan_speed);
        gold_window_pan += (max_gold_window_pan / pan_speed);
        item_window_pan += ((max_item_window_pan + (item_index*index_offset))/(pan_speed));
        if(shop_window_pan >= max_shop_window_pan){
            pan_direction = "none";
            window_pan = max_shop_window_pan;
            gold_pan = max_gold_window_pan;
            item_window_pan = max_item_window_pan + (item_index*index_offset);
            event_perform(ev_other,ev_user0);
        }
    }
}


