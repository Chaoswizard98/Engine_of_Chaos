/*if(first_heartbeat){//first time calling draw code since instance creation
    first_heartbeat = false;
    event_perform(ev_other,ev_user0);
}*/

if(state = "Start_Overworld_Transition"){
    if (surface_exists(sur_oldroom)){
        draw_surface(sur_oldroom,Get_Camera_X(),Get_Camera_Y()+pan);
    }
}
else if (pan > (pan_speed)){
    switch(pan_direction){
        case "Up":
            if (surface_exists(sur_oldroom)){
                draw_surface(sur_oldroom,Get_Camera_X(),Get_Camera_Y()+pan);
            }
            if (surface_exists(sur_newroom)){
                draw_surface(sur_newroom,Get_Camera_X(),(Get_Camera_Y()-Get_Camera_Height())+pan);
            }
        break;
        case "Down":
            if (surface_exists(sur_oldroom)){
                draw_surface(sur_oldroom,Get_Camera_X(),Get_Camera_Y()-pan);
            }
            if (surface_exists(sur_newroom)){
                draw_surface(sur_newroom,Get_Camera_X(),(Get_Camera_Y()+Get_Camera_Height())-pan);
            }
        break;
        case "Left":
            if (surface_exists(sur_oldroom)){
                draw_surface(sur_oldroom,Get_Camera_X()+pan,Get_Camera_Y());
            }
            if (surface_exists(sur_newroom)){
                draw_surface(sur_newroom,(Get_Camera_X()-Get_Camera_Width())+pan,Get_Camera_Y());
            }
        break;
        case "Right":
            if (surface_exists(sur_oldroom)){
                draw_surface(sur_oldroom,Get_Camera_X()-pan,Get_Camera_Y());
            }
            if (surface_exists(sur_newroom)){
                draw_surface(sur_newroom,(Get_Camera_X()+Get_Camera_Width())-pan,Get_Camera_Y());
            }
        break;
    }
}

/// I do this to hide the flicker where the next room pops up for 1 frame 
else if ((pan = pan_speed)){ 
    if(surface_exists(sur_oldroom)){
        sur_newroom = surface_create(Get_Camera_Width(),Get_Camera_Height());
        surface_set_target(sur_newroom);
        draw_clear(c_black);
        draw_surface_stretched(application_surface,0,0,Get_Camera_Width(),Get_Camera_Height());
        surface_reset_target();
        draw_surface(sur_oldroom,Get_Camera_X(),Get_Camera_Y());
    }
}

/* */
/*  */
