function Test_AI_Movement_Node() {
	var _character = argument[0];
	var _movement_range = argument[1];
	var _movement_type = argument[2];
	var _current_tile = argument[3];
	var _open_list = argument[4];
	var _destination_x = argument[5];
	var _destination_y = argument[6];
	var _new_tile = noone;

	if(!Destination_Blocked(_destination_x,_destination_y,_movement_type,_character,"AI_Pathfinding")){
	    if(((_current_tile.running_cost + Get_Terrain_Stats(Get_Terrain_Type(_destination_x,_destination_y),"Movement_Cost",_movement_type))<=_movement_range)){//if not outside move range
	        _new_tile = instance_create_layer(round(_destination_x),round(_destination_y),"Terrain_Instance_Layer",obj_AI_Movement_Tile);//create new tile at location
	        _new_tile.running_cost = (_current_tile.running_cost + Get_Terrain_Stats(Get_Terrain_Type(_destination_x,_destination_y),"Movement_Cost",_movement_type));//set new tile's running cost
	        _new_tile.number_of_steps = (_current_tile.number_of_steps + 1);
	        ds_priority_add(_open_list, _new_tile, _new_tile.running_cost);//add start node to list
	    }
	}

	return _new_tile;



}
