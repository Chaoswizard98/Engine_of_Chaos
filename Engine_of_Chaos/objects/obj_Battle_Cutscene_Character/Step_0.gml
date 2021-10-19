//========
//Panning=
//========
if(pan_direction != "none"){
    if(pan_direction = "in"){
        x_pan -= x_pan_speed;
        if(x_pan <= 0){
            x_pan = 0;
            pan_direction = "none";
            on_screen = true;
            event_perform(ev_other,ev_user1);
        }
    }
    else if(pan_direction = "out"){
        x_pan += x_pan_speed;
        if(x_pan >= max_x_pan){
            x_pan = max_x_pan;
            pan_direction = "none";
            on_screen = false;
            Play_Battle_Animation(id,"Idle",false,false,false);//return to idle
            event_perform(ev_other,ev_user1);
        }
    }
    else if(pan_direction = "in_long"){
        x_pan += x_pan_speed;
        if(x_pan >= 0){
            x_pan = 0;
            pan_direction = "none";
            on_screen = true;
            event_perform(ev_other,ev_user1);
        }
    }
}
//==========
//Hit Shake=
//==========
if(hit_timer > 0){//Takes care of the hit animation for the character
    shake_x = round(random_range(-7,7));
    shake_y = round(random_range(-7,7));
    hit_timer -= 1;
    if(hit_timer <= 0){
        hit_timer = 0;
        shake_x = 0;
        shake_y = 0;
        event_perform(ev_other,ev_user0);
    }
}
//==========
//Hit Flash=
//==========
if(hit_flash){//if showing hit flash, animate it
    flash_alpha -= hit_flash_speed;//subtract speed
    if(flash_alpha <= 0){//if done with flash, reset defaults
        hit_flash = false;
        hit_flash_color = c_white;
        flash_speed = 0;
        flash_alpha = 0;
    }
}
//====================
//Death / Summon Fade=
//====================
if(fade){//drawing a sprite that isnt the character (ie, explode, etc)
    if(alpha <= end_alpha){//if we're fading in
        alpha += fade_speed;//increase alpha
        if(alpha >= end_alpha){
            alpha = end_alpha;//set alpha to final alpha
            fade = false;
            event_perform(ev_other,ev_user0);
        }
    }
    else{//if we're fading out
        alpha -= fade_speed;//increase alpha
        if(alpha <= end_alpha){
            alpha = end_alpha;//set alpha to final alpha
            fade = false;
            event_perform(ev_other,ev_user0);
        }
    }
}

//if we trigger a new frame in the animation (or are starting a new one) see if we trigger an event
if(((floor(image_index) != floor(image_index + image_speed))&&(current_frame != floor(image_index + image_speed)))||(current_frame = -1)){//if new frame
	current_frame = floor(image_index + image_speed);//set current frame to new frame
    Global_Battle_Cutscene_Character_Animation_Event(id);//run 'new frame' event
}