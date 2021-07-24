function Test_AoE_Node() {
	var _current_tile = argument[0];
	var _open_list = argument[1];
	var _target_range = argument[2];
	var _removal_range = argument[3];
	var _x_pos = argument[4];
	var _y_pos = argument[5];

	if(!Edge_Of_Room(_x_pos,_y_pos)){//If not outside room
	    var _new_tile = instance_position(_x_pos,_y_pos,obj_AoE_Tile);
	    var _valid_tile = false;
	    var _generate_new_tile = false;
    
	    if(_new_tile = noone){//If no tile at location
	        _valid_tile = true;
	        _generate_new_tile = true;
	    }
	    else{//else, one exists, make sure it isnt part of the list (in case of nested target ranges (prism flowers))
	        if((ds_priority_find_priority(_open_list, _new_tile)=undefined)&&(!_new_tile.closed)){
	            _valid_tile = true;
	        }
	    }
    
	    if(_valid_tile){
	        if((_current_tile.running_cost + 1)<=_target_range){//if not beyond max range
	            if(_generate_new_tile){
	                _new_tile = instance_create_layer(_x_pos,_y_pos,"Terrain_Instance_Layer",obj_AoE_Tile);//create new tile at location
	            }
	            _new_tile.running_cost = (_current_tile.running_cost + 1);//set new tile's running cost
	            if((_current_tile.running_cost + 1)<=_removal_range){
	                _new_tile.remove = true;
	            }
	            ds_priority_add(_open_list, _new_tile, _new_tile.running_cost);//add start node to list
	        }
	    }
	}



}
