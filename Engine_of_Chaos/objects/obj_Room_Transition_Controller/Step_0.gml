if(state = "Start_Overworld_Transition"){
    startup_delay -= 1;
    if(startup_delay <= 0){
        state = "Go_To_Next_Room";
        room_goto(next_room);
    }
}
else if(state = "Go_To_Next_Room"){
    pan += pan_speed;
    if((((pan_direction = "Up") || (pan_direction = "Down"))&&(pan >= (Get_Camera_Height())))||(((pan_direction = "Right") || (pan_direction = "Left"))&&(pan >= (Get_Camera_Width())))){
        surface_free(sur_oldroom);
        surface_free(sur_newroom);
        switch(pan_direction){
            case "Up": Move_Character(global.Player,"Up",1,global.Player.player_move_speed); break;
            case "Down": Move_Character(global.Player,"Down",1,global.Player.player_move_speed); break;
            case "Left": Move_Character(global.Player,"Left",1,global.Player.player_move_speed); break;
            case "Right": Move_Character(global.Player,"Right",1,global.Player.player_move_speed); break;
        }
        instance_destroy();
    }
}

