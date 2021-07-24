function Get_Flee_Destination() {
	var _character = argument[0];
	var _speed = argument[1];
	var _search_range = argument[2];
	var _destination = noone;
	var _old_cost = 999;
	Generate_AI_Movement_Range(_character,_search_range,_character.x,_character.y,"Flee");
	var _list = ds_priority_create();

	with(obj_AI_Movement_Tile){
	    if(instance_place(x,y,obj_Movement_Tile)){//if it's within our move range
	        if((_character.x = x)&&(_character.y = y)){//get cost of our current location
	            _old_cost = number_of_steps;
	        }
	        if(Tile_Is_Empty(id)){//if tile isnt occupied
	            if(instance_place(x,y,obj_Movement_Tile).number_of_steps <= _speed){
	                ds_priority_add(_list, id, number_of_steps);//add to list (sorted via least cost)
	            }
	        }
	    }
	}

	_target = ds_priority_find_max(_list);//get least cost tile
	if(_target != undefined){
	    if(_old_cost >= _target.number_of_steps){//if old cost is higher than new, dont move
	        _target = noone;
	    }
	    else{
	        _target = instance_position(_target.x,_target.y,obj_Movement_Tile)
	    }
	}
	else{
	    _target = noone;
	}
	ds_priority_destroy(_list);//destroy the list and free it from memory.
	instance_destroy(obj_AI_Movement_Tile);//delete temp AI tiles


	return _target;



}
