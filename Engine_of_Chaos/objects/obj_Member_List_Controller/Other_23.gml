switch(parent_event){
    case "Backed_Out_Of_Menu":
        pan_direction = "in";
        portrait_controller.pan_direction = "in";
        parent_event = "none";
        state = "Selecting_Character";
        play_pan_sound = true;
    break;
    default: event_perform(ev_other,ev_user0); break;
}

