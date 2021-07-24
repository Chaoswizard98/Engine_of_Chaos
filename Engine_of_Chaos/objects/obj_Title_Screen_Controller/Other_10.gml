if(state = "Room_Start"){//if the room is just starting,
    Destroy_Screen_Fade_Controller();//destroys the screen fade controller
    state = "none";//reset state
    allow_interaction = true;//allow the player to push buttons
}
else if(state = "Start_Game"){//pressed the start button
    room_goto_next();//go to the next room
    //Room_Transfer('Jason','Force',room_Ashenwood,'Egress');
}

