function Walk_To_Location() {
	var _character = argument[0];
	var _destination_x = argument[1];
	var _destination_y = argument[2];
	var _end_action = argument[3];

	_character.pathfinding_end_action = _end_action;

	if(Object_Is_At_Location(_character,_destination_x,_destination_y)){//if we're already at the start location
	    with(_character){
	        event_perform(ev_other,ev_end_of_path);//perform end of path event
	    }
	}
	else{
	    _character.image_speed = _character.player_walking_animation_speed;
	    Pathfind_To_Location(_character,_character.movement_type,_destination_x,_destination_y,false,_character.pathfinding_speed,"Character");//object,move_type,targetX,targetY,allow_diagonals,path speed
	}



}
