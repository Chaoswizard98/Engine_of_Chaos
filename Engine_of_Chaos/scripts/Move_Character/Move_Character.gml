function Move_Character(_character,_direction,_tiles,_speed,_looking = _direction,_animation_speed = _character.player_walking_animation_speed,_call_cutscene = _character.call_cutscene, _ignore_stairs = false){
	if(_animation_speed = -1){
		_animation_speed = _character.player_walking_animation_speed;
	}
	
	_character.call_cutscene = _call_cutscene;

	switch(_direction){
	    case "Up":
	        with(_character){
	            Move_Character_Town(x,y-(global.Tile_Size),"Up",_tiles,_speed,_animation_speed,_looking,_ignore_stairs);
	        }
	    break;
	    case "Down":
	        with(_character){
	            Move_Character_Town(x,y+(global.Tile_Size),"Down",_tiles,_speed,_animation_speed,_looking,_ignore_stairs);
	        }
	    break;
	    case "Left":
	        with(_character){
	            Move_Character_Town(x-global.Tile_Size,y,"Left",_tiles,_speed,_animation_speed,_looking,_ignore_stairs);
	        }
	    break;
	    case "Right":
	        with(_character){
	            Move_Character_Town(x+global.Tile_Size,y,"Right",_tiles,_speed,_animation_speed,_looking,_ignore_stairs);
	        }
	    break;
	}
}