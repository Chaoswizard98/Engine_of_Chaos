if(!moving){//if this object is not moving
    if(dialogue_ID != "none"){//if they have dialogue, start the cutscene
        cutscene_mode = true;//set cutscene mode to true
        current_object.cutscene_mode = true;//set player cutscene mode to true
        if(face_player_during_dialogue){//if they look at the player during dialogue
            direction = (current_object.direction + 180) mod 360;//look at the player
        }
        Create_Cutscene_Controller(dialogue_ID,"NPC_Dialogue",0,current_object,id);//arguments: <script ID> <cutscene type> [initial_state] [player trigger] [npc trigger]
    }
    else{//otherwise no cutscene, break the event
        current_object.allow_interaction = true;//reset the player
    }
}
else{//this character is moving, dont start dialogue.
    current_object.allow_interaction = true;
}

