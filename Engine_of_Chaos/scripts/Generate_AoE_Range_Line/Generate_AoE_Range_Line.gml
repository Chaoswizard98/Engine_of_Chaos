function Generate_AoE_Range_Line() {
	var _start_x = argument[0];
	var _start_y = argument[1];
	var _target_range = argument[2];
	var _formula = argument[3];

	var _current_tile;
	var _new_tile;

	var _open_list = ds_priority_create();

	_current_tile = instance_create_layer(_start_x,_start_y,"Terrain_Instance_Layer",obj_AoE_Tile);//start node
	_current_tile.running_cost = 0;
	ds_priority_add(_open_list, _current_tile, 0);//add start node to list

	while(!ds_priority_empty(_open_list)){//while the list isnt empty
	    _current_tile = ds_priority_delete_min(_open_list);
	    //Left
	    if(_formula = "Left"){
	        if(instance_position(_current_tile.x-global.Tile_Size,_current_tile.y,obj_AoE_Tile)=noone){//if there is no tile object at the location
	            if(!Edge_Of_Room(_current_tile.x-global.Tile_Size,_current_tile.y)){
	            if((_current_tile.running_cost + 1)<=_target_range){
	                _new_tile = instance_create_layer(_current_tile.x-global.Tile_Size,_current_tile.y,"Terrain_Instance_Layer",obj_AoE_Tile);//create new tile at location
	                _new_tile.running_cost = (_current_tile.running_cost + 1);//set new tile's running cost
	                ds_priority_add(_open_list, _new_tile, _new_tile.running_cost);//add start node to list
	            }
	        }
	        }
	    }
	    //Up
	    if(_formula = "Up"){
	    if(instance_position(_current_tile.x,_current_tile.y-global.Tile_Size,obj_AoE_Tile)=noone){//if there is no tile object at the location
	        if(!Edge_Of_Room(_current_tile.x,_current_tile.y-global.Tile_Size)){
	        if((_current_tile.running_cost + 1)<=_target_range){
	            _new_tile = instance_create_layer(_current_tile.x,_current_tile.y-global.Tile_Size,"Terrain_Instance_Layer",obj_AoE_Tile);//create new tile at location
	            _new_tile.running_cost = (_current_tile.running_cost + 1);//set new tile's running cost
	            ds_priority_add(_open_list, _new_tile, _new_tile.running_cost);//add start node to list
	        }
	        }
	    }
	    }
	    //Right
	    if(_formula = "Right"){
	    if(instance_position(_current_tile.x+global.Tile_Size,_current_tile.y,obj_AoE_Tile)=noone){//if there is no tile object at the location
	        if(!Edge_Of_Room(_current_tile.x+global.Tile_Size,_current_tile.y)){
	        if((_current_tile.running_cost + 1)<=_target_range){
	            _new_tile = instance_create_layer(_current_tile.x+global.Tile_Size,_current_tile.y,"Terrain_Instance_Layer",obj_AoE_Tile);//create new tile at location
	            _new_tile.running_cost = (_current_tile.running_cost + 1);//set new tile's running cost
	            ds_priority_add(_open_list, _new_tile, _new_tile.running_cost);//add start node to list
	        }
	        }
	    }
	    }
	    //Down
	    if(_formula = "Down"){
	    if(instance_position(_current_tile.x,_current_tile.y+global.Tile_Size,obj_AoE_Tile)=noone){//if there is no tile object at the location
	        if(!Edge_Of_Room(_current_tile.x+global.Tile_Size,_current_tile.y+global.Tile_Size)){
	        if((_current_tile.running_cost + 1)<=_target_range){
	            _new_tile = instance_create_layer(_current_tile.x,_current_tile.y+global.Tile_Size,"Terrain_Instance_Layer",obj_AoE_Tile);//create new tile at location
	            _new_tile.running_cost = (_current_tile.running_cost + 1);//set new tile's running cost
	            ds_priority_add(_open_list, _new_tile, _new_tile.running_cost);//add start node to list
	        }
	        }
	    }
	    }
	}

	ds_priority_destroy(_open_list);//destroy the list and free it from memory.

	with(obj_AoE_Tile){
	    if(remove){
	        instance_destroy();
	    }
	}



}
