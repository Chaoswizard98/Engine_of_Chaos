if(!looted){//if not already looted
    Start_Cutscene(cutscene_ID,current_object,id);//Cutscene_ID, Player, Self
}
else{//if already looted, unfreeze the player.
    current_object.allow_interaction = true;
}

