function AI_Move_To_Location(_skip_action,_character,_destination_x,_destination_y,_speed,_search_range){

	if(!_skip_action){
	    var _destination = undefined;
	    var _old_cost = 9999;
	    Generate_AI_Movement_Range(_character,_search_range,_destination_x,_destination_y,"Default");
	    var _list = ds_priority_create();
    
	    with(obj_AI_Movement_Tile){
	        if((_character.x = x)&&(_character.y = y)){//get cost of our current location
	            _old_cost = running_cost;
	        }
	        if(instance_place(x,y,obj_Movement_Tile) != noone){//if this tile is within our move range
	            if(Tile_Is_Empty(id)){//if tile isnt occupied
	                if(instance_place(x,y,obj_Movement_Tile).number_of_steps <= _speed){
	                    ds_priority_add(_list, id, running_cost);//add to list (sorted via least cost)
	                }
	            }
	        }
	    }
	    _destination = ds_priority_find_min(_list);//get least cost tile
	    ds_priority_destroy(_list);//destroy the list and free it from memory.
    
	    if(_destination != undefined){//if we have a destination,
	        if(_destination.running_cost < _old_cost){//if destination is closer than our current position
	            _character.ai_destination_x = _destination.x;//remember destination in case the path breaks (due to teleport tile loops)
	            _character.ai_destination_y = _destination.y;
	            _character.ai_action = "none";
	            Walk_To_Location(_character,_destination.x,_destination.y,"Perform_AI_Action");//move to that location
	            instance_destroy(obj_AI_Movement_Tile);//delete temp AI tiles
	            return true;//successful AI event
	        }
	    }
    
	    instance_destroy(obj_AI_Movement_Tile);//delete temp AI tiles
	    return false;
	}
	return true;
}