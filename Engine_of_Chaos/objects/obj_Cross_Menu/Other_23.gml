if(parent_event = "Backed_Out_Of_Menu"){
    pan_direction = "left";
    play_pan_sound = true;
}
else{
    UI_Cancel_Event(current_object,parent_event,parent_event_trigger);
    instance_destroy();
}

