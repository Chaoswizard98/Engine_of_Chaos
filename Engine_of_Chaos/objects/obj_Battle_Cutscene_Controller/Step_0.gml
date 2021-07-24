if(timer){
    event_timer -= 1;
    if(event_timer <= 0){
        event_timer = 0;
        timer = false;
        event_perform(ev_other,ev_user0);
    }
}
//Background Panning
if(pan_camera){
    if(pan_direction != "none"){
        if(pan_direction = "Right"){
            x_pan += x_pan_speed;
            if(x_pan >= 0){
                x_pan = 0;
                pan_direction = "none";
                pan_camera = false;
                event_perform(ev_other,ev_user1);
            }
        }
        else if(pan_direction = "Left"){
            x_pan -= x_pan_speed;
            if(x_pan <= 0){
                x_pan = 0;
                pan_direction = "none";
                pan_camera = false;
                event_perform(ev_other,ev_user1);
            }
        }
    }
}
//Screen Flashing
if(screen_flash){
    flash_timer -= 1;
    if(flash_timer <= 0){
        border_color = c_black;
        screen_flash = false;
    }
}

//Screen Shaking
if(shake_timer != 0){
    if(shake_timer > 0){//test for 0 because negetives mean infinite shake
        shake_timer -= 1;
        if(shake_timer <= 0){//if end of loop
            shake_x = 0;//reset shake
            shake_y = 0;
            shake_power_x = 0;
            shake_power_y = 0;
            shake_timer = 0;
        }
    }
    if(shake_timer != 0){//if not end of loop, shake screen
        shake_x = random_range(-shake_power_x,shake_power_x);
        shake_y = random_range(-shake_power_y,shake_power_y);
    }
    
}

