if(!looted){//if not already looted
    event_perform(ev_other,ev_user15);//perform event 15 (loot chest script)
}
else{//if already looted, unfreeze the player.
    current_object.allow_interaction = true;
}

