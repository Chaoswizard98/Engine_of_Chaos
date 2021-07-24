function Generate_AoE_Range_Default() {
	var _character = argument[0];
	var _start_x = argument[1];
	var _start_y = argument[2];
	var _target_range = argument[3];
	var _removal_range = argument[4];
	var _formula = argument[5];

	if(_target_range = -2){//if -2, set to max range
	    _target_range = global.Max_AoE_Range;
	}

	var _current_tile;
	var _new_tile;

	var _allow_up = Get_AoE_Range_Stats(_formula,"Allow_Up");
	var _allow_down = Get_AoE_Range_Stats(_formula,"Allow_Down");
	var _allow_left = Get_AoE_Range_Stats(_formula,"Allow_Left");
	var _allow_right = Get_AoE_Range_Stats(_formula,"Allow_Right");
	var _allow_diagonals = Get_AoE_Range_Stats(_formula,"Allow_Diagonals");

	var _open_list = ds_priority_create();

	_current_tile = instance_position(_start_x,_start_y,obj_AoE_Tile);
	if(_current_tile = noone){//If no tile at start location
	    _current_tile = instance_create_layer(_start_x,_start_y,"Terrain_Instance_Layer",obj_AoE_Tile);//create start node
	}

	_current_tile.running_cost = 0;
	if((_current_tile.running_cost)<=_removal_range){
	    _current_tile.remove = true;
	}
	ds_priority_add(_open_list, _current_tile, 0);//add start node to list



	while(!ds_priority_empty(_open_list)){//while the list isnt empty
	    _current_tile = ds_priority_delete_min(_open_list);
	    _current_tile.closed = true;
    
	    if(_allow_left){Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x-global.Tile_Size,_current_tile.y);}//Left
	    if(_allow_up){Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x,_current_tile.y-global.Tile_Size);}//Up
	    if(_allow_right){Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x+global.Tile_Size,_current_tile.y);}//Right
	    if(_allow_down){Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x,_current_tile.y+global.Tile_Size);}//Down
    
	    if(_allow_diagonals){
	        Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x-global.Tile_Size,_current_tile.y-global.Tile_Size);//Top Left
	        Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x+global.Tile_Size,_current_tile.y-global.Tile_Size);//Top Right
	        Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x+global.Tile_Size,_current_tile.y+global.Tile_Size);//Bottom Right
	        Test_AoE_Node(_current_tile,_open_list,_target_range,_removal_range,_current_tile.x-global.Tile_Size,_current_tile.y+global.Tile_Size);//Bottom Left
	    }
	}

	ds_priority_destroy(_open_list);//destroy the list and free it from memory.

	with(obj_AoE_Tile){
	    closed = false;
	    if(remove){
	        instance_destroy();
	    }
	}



}
