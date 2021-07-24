function AI_Wander() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _wander_range = argument[2];
	var _min_move = argument[3];
	var _max_move = argument[4];
	var _formula = argument[5];

	if(!_skip_action){
	    var _array = instance_create_layer(0,0,"Terrain_Instance_Layer",obj_Temp_Array);//temp array for holding potential targets
	    var _start_x;
	    var _start_y;
	    var _destination = noone;
    
	    switch(_formula){//figure out start location based on formula
	        case "Origin"://character's origin point (where they started when the room was created)
	            _start_x = _character.ai_x_origin;
	            _start_y = _character.ai_y_origin;
	        break;
	        default://Default to the character's current location
	            _start_x = _character.x;
	            _start_y = _character.y;
	        break;
	    }
    
	    //Get all possible destinations
	    with(obj_Movement_Tile){//Loop through movement tiles
	        if(Find_Distance(_start_x,_start_y,x,y) <= _wander_range){//if it's within our wander range
	            if((number_of_steps <= _max_move)&&(number_of_steps >= _min_move)){//if it's within our min and max move range
	                if(Tile_Is_Empty(id)){//if a character doesnt already exist here (Note, will not return our starting tile either)
	                    _array.array[_array.size] = id;
	                    _array.size += 1;
	                }
	            }
	        }
	    }
	    if(_array.size > 0){
	        _destination = _array.array[irandom_range(0,(_array.size-1))];//Randomly choose from available destinations
	    }
    
	    instance_destroy(_array);//Delete the temp array
    
	    if(_destination != noone){//if we have a destination,
	        Walk_To_Location(_character,_destination.x,_destination.y,"Perform_AI_Action");//move to that location
	        _character.ai_action = "none";
	        return true;//successful AI event
	    }
	    return false;
	}

	return true;//event failed



}
