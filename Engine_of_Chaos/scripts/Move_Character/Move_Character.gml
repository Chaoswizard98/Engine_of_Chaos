function Move_Character() {
	//character,direction,tiles,speed,[maintain direction]
	var _character = argument[0];
	var _direction = argument[1];
	var _tiles = argument[2];
	var _move_speed = argument[3];
	var _face_direction = _direction;
	var _animation_speed = _character.player_walking_animation_speed;

	if(argument_count > 4){
	    _face_direction = argument[4];
	}
	if(argument_count > 5){
	    if(argument[5] != -1){
	        _animation_speed = argument[5];
	    }
	}
	if(argument_count > 6){
	    _character.call_cutscene = argument[6];
	}


	switch(_direction){
	    case "Up":
	        with(_character){
	            Move_Character_Town(x,y-(global.Tile_Size),"Up",_tiles,_move_speed,_animation_speed,_face_direction);
	        }
	    break;
	    case "Down":
	        with(_character){
	            Move_Character_Town(x,y+(global.Tile_Size),"Down",_tiles,_move_speed,_animation_speed,_face_direction);
	        }
	    break;
	    case "Left":
	        with(_character){
	            Move_Character_Town(x-global.Tile_Size,y,"Left",_tiles,_move_speed,_animation_speed,_face_direction);
	        }
	    break;
	    case "Right":
	        with(_character){
	            Move_Character_Town(x+global.Tile_Size,y,"Right",_tiles,_move_speed,_animation_speed,_face_direction);
	        }
	    break;
	}



}
