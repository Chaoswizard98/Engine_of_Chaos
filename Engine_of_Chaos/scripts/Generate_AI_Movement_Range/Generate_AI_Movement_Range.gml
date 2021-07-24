function Generate_AI_Movement_Range() {
	var _character = argument[0];
	var _movement_range = argument[1];
	var _start_x = argument[2];
	var _start_y = argument[3];
	var _formula = argument[4];
	var _movement_type = Get_Character_Movement_Type("Local",_character,"Total");
	var _current_tile;
	var _new_tile;
	var _teleport_tile;
	var _stair;

	var _open_list = ds_priority_create();

	if(_formula = "Flee"){
	    _movement_type = "Cursor";
	    with(obj_Character){
	        if(Target_Is_Enemy(_character,id)){
	            _current_tile = instance_create_layer(round(x),round(y),"Terrain_Instance_Layer",obj_AI_Movement_Tile);//start node
	            ds_priority_add(_open_list, _current_tile, 0);//add start node to list
	        }
	    }
	}
	else{
	    _current_tile = instance_create_layer(round(_start_x),round(_start_y),"Terrain_Instance_Layer",obj_AI_Movement_Tile);//start node
	    ds_priority_add(_open_list, _current_tile, 0);//add start node to list
	}


	while(!ds_priority_empty(_open_list)){//while the list isnt empty
	    _current_tile = ds_priority_delete_min(_open_list);
	    //Down
	    if(instance_position(_current_tile.x,_current_tile.y+global.Tile_Size,obj_AI_Movement_Tile)=noone){//if there is no tile object at the location
	        Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_current_tile.x,_current_tile.y+global.Tile_Size);
	    }
	    //Right
	    if(instance_position(_current_tile.x+global.Tile_Size,_current_tile.y,obj_AI_Movement_Tile)=noone){//if there is no tile object at the location
	        Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_current_tile.x+global.Tile_Size,_current_tile.y);
	    }
	    //Up
	    if(instance_position(_current_tile.x,_current_tile.y-global.Tile_Size,obj_AI_Movement_Tile)=noone){//if there is no tile object at the location
	        Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_current_tile.x,_current_tile.y-global.Tile_Size);
	    }
	    //Left
	    if(instance_position(_current_tile.x-global.Tile_Size,_current_tile.y,obj_AI_Movement_Tile)=noone){//if there is no tile object at the location
	        Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_current_tile.x-global.Tile_Size,_current_tile.y);
	    }
	    //Test for stair tiles
	    _stair = instance_position(_current_tile.x-global.Tile_Size,_current_tile.y,obj_Stair_Left_Parent);
	    if(_stair!=noone){//if there is a stair here,
	        if(instance_position(_current_tile.x-global.Tile_Size,_current_tile.y+(global.Tile_Size*_stair.delta_y),obj_AI_Movement_Tile) = noone){
	            Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_current_tile.x-global.Tile_Size,_current_tile.y+(global.Tile_Size*_stair.delta_y));
	        }
	    }
	    _stair = instance_position(_current_tile.x+global.Tile_Size,_current_tile.y,obj_Stair_Right_Parent);
	    if(_stair!=noone){//if there is a stair here,
	        if(instance_position(_current_tile.x+global.Tile_Size,_current_tile.y+(global.Tile_Size*_stair.delta_y),obj_AI_Movement_Tile) = noone){
	            Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_current_tile.x+global.Tile_Size,_current_tile.y+(global.Tile_Size*_stair.delta_y));
	        }
	    }
    
	    //Test for transport tiles.
	    _teleport_tile = instance_position(_current_tile.x,_current_tile.y,obj_Teleport_Tile);//get teleport tile at this location
	    if(_teleport_tile!=noone){//if there is a tile here,
	        if(instance_position(_teleport_tile.linked_tile.x,_teleport_tile.linked_tile.y,obj_AI_Movement_Tile)=noone){//if there is no tile object at the location
	            _new_tile = Test_AI_Movement_Node(_character,_movement_range,_movement_type,_current_tile,_open_list,_teleport_tile.linked_tile.x,_teleport_tile.linked_tile.y);
	            if(_new_tile != noone){
	                _new_tile.number_of_steps -= 1;//teleport tiles are technically 1 movement (since we cant end turn on them)
	            }
	        }
	    }
    
	}

	ds_priority_destroy( _open_list);//destroy the list and free it from memory.



}
