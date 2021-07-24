if(fade_direction = "out"){
    //Fade out
    if(fade_alpha < fade_stop){
        fade_alpha += fade_speed;
        if(fade_alpha >= fade_stop){
            fade_alpha = fade_stop;
            fade_direction = "none";
            with(current_object){
                event_perform(ev_other,ev_user12);
            }
        }
    }
}
else if(fade_direction = "in"){
    //Fade in
    if(fade_alpha > fade_stop){
        fade_alpha -= fade_speed;
        if(fade_alpha <= fade_stop){
            fade_alpha = fade_stop;
            fade_direction = "none";
            with(current_object){
                event_perform(ev_other,ev_user12);
            }
        }
    }
}

