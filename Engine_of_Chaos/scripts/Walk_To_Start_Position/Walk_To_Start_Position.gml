function Walk_To_Start_Position(_character){
	_character.pathfinding_end_action = "Walking_To_Start_Location";
	if(Object_Is_At_Location(_character,_character.turn_start_x,_character.turn_start_y)){//if we're already at the start location
	    _character.allow_interaction = false;
	    with(_character){
	        event_perform(ev_other,ev_end_of_path);//perform end of path event
	    }
	}
	else{
	    if(!Tile_Is_Within_Movement_Range(round(_character.x),round(_character.y))){//if the path is blocked (unequipping mobility ring)
	        Play_Sound(sfx_Error);//play error sound
	    }
	    else{//otherwise, pathfind back to start location
	        _character.allow_interaction = false;
	        _character.image_speed = _character.player_walking_animation_speed;
	        Pathfind_To_Location(_character,_character.movement_type,_character.turn_start_x,_character.turn_start_y,false,_character.pathfinding_speed,"Character");//object,move_type,targetX,targetY,allow_diagonals,path speed
	    }
	}
}