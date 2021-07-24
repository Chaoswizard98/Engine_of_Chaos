//===============
//Fade Transition
//===============
if((transition_type = "Screen_Fade")||(transition_type = "Load_Game")){
    if(state = "Start"){
        state = "Fade_In";
        Create_Screen_Fade(c_black,0,1.5,.04,"out",id);//color, start, end, speed, direction, object
    }
    else if(state = "Fade_In"){
        persistent = true;
        room_goto(next_room);
        state = "End_Transition";
    }
    else if(state = "End_Transition"){
        with(current_object){
            event_perform(ev_other,ev_user10);
        }
        instance_destroy(obj_Screen_Fade_Controller);
        instance_destroy();
    }
}
//====================
//Overworld Transition
//====================
else if(transition_type = "Overworld"){
    switch(pan_direction){
        case "Up": obj_Camera.halt_x_movement = true; break;
        case "Down": obj_Camera.halt_x_movement = true; break;
        case "Left": obj_Camera.halt_y_movement = true; break;
        case "Right": obj_Camera.halt_y_movement = true; break;
    }
    obj_Camera.persistent = true;
    persistent = true; // when changing room keep this object alive
    sur_oldroom = surface_create(Get_Camera_Width(),Get_Camera_Height());
    surface_set_target(sur_oldroom);
    draw_clear(c_black);
    draw_surface_stretched(application_surface,0,0,Get_Camera_Width(),Get_Camera_Height());
    surface_reset_target();
    player_image_index = global.Player.image_index;
    state = "Start_Overworld_Transition";
}

