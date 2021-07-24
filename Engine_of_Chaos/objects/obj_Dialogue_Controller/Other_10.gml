//tell current object to run event 15 before we self destruct
if(parent_event = "End_Audio_Delay"){
    parent_event = "none";
    allow_interaction = true;//allow player to end / continue dialogue
    display_arrow = true;
}
else{
    with(current_object){
        event_perform(ev_other,ev_user15);
    }
}

