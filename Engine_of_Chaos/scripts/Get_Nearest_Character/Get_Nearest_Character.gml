function Get_Nearest_Character() {
	var _character = argument[0];
	var _formula = argument[1];
	var _search_range = argument[2];
	var _target;

	Generate_AI_Movement_Range(_character,_search_range,_character.x,_character.y,"Default");
	var _list = ds_priority_create();

	with(obj_Character){//loop through all characters
	    if(_character != id){//dont target self
	        if(instance_place(x,y,obj_AI_Movement_Tile)){//if in range
	            switch(_formula){
	                case "Enemy"://Change to 'Can_Target_Character' script
	                    if(Target_Is_Enemy(_character,id)){
	                        ds_priority_add(_list, id, instance_position(x,y,obj_AI_Movement_Tile).running_cost);//add to list (sorted via least cost)
	                    }
	                break;
	                case "Ally":
	                    if(Target_Is_Ally(_character,id)){
	                        ds_priority_add(_list, id, instance_position(x,y,obj_AI_Movement_Tile).running_cost);//add to list (sorted via least cost)
	                    }
	                break;
	                default:
	                    ds_priority_add(_list, id, instance_position(x,y,obj_AI_Movement_Tile).running_cost);//add to list (sorted via least cost)
	                break;
	            }
	        }
	    }
	}

	_target = ds_priority_find_min(_list);//get least cost tile
	ds_priority_destroy(_list);//destroy the list and free it from memory.
	instance_destroy(obj_AI_Movement_Tile);//delete temp AI tiles

	if(_target = undefined){
	    _target = noone;
	}

	return _target;



}
