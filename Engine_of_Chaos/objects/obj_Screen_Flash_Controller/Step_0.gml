if(flash_direction != "none"){
    if(flash_direction = "in"){
        flash_timer += flash_speed;
        if(flash_timer >= flash_max){
            if(iterations != -1){
                iterations -= 1;
                if(iterations <= 0){
                    flash_direction = "none";
                    with(current_object){
                        parent_event = "End_Screen_Flash";
                        event_perform(ev_other,ev_user12);
                    }
                }
                else{
                    flash_direction = "out";
                }
            }
            else{
                flash_direction = "out";
            }
        }
    }
    else if(flash_direction = "out"){
        flash_timer -= flash_speed;
        if(flash_timer <= flash_min){
            if(iterations != -1){
                iterations -= 1;
                if(iterations <= 0){
                    flash_direction = "none";
                    with(current_object){
                        parent_event = "End_Screen_Flash";
                        event_perform(ev_other,ev_user12);
                    }
                }
                else{
                    flash_direction = "in";
                }
            }
            else{
                flash_direction = "in";
            }
        }
    }
    if(flash_timer >= 1){
        flash_alpha = 1;
    }
    else if(flash_timer <= 0){
        flash_alpha = 0;
    }
    else{
        flash_alpha = flash_timer;
    }
}

