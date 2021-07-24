function Pathfind_To_Location() {
	var _object = argument[0];
	var _movement_type = argument[1];
	var _target_x = argument[2];
	var _target_y = argument[3];
	var _allow_diagonals = argument[4];
	var _path_speed = argument[5];
	var _formula = argument[6];

	_object.pathfinding = true;
	if(Object_Is_At_Location(_object,round(_target_x),round(_target_y))){//if they're already on the location
	    with(_object){//run end of path event
	        event_perform(ev_other,ev_end_of_path);
	    }
	}
	else{//otherwise, pathfind to location
	    with(_object){
	        AStar_init((room_width/global.Tile_Size),(room_height/global.Tile_Size),global.Tile_Size,global.Tile_Size,0,0,_allow_diagonals,0,-2,-2,1,0);
	        myPath = -1;
	        var i = 0;
	        var j = 0;
	        //set tiles to blocked
	        for(i=0; i<(room_width/global.Tile_Size); i+= 1){
	            for(j=0; j<(room_height/global.Tile_Size); j+= 1){
	                if(!Destination_Blocked((i*global.Tile_Size),(j*global.Tile_Size),_movement_type,_object,_formula)){
	                    AStar_setBlocked(i,j,0);
	                }
	                else{
	                    AStar_setBlocked(i,j,1);
	                }
	            }
	        }
        
	        myPath = AStar_findPath(x/global.Tile_Size,y/global.Tile_Size,_target_x/global.Tile_Size,_target_y/global.Tile_Size,0,_movement_type);
        
        
	        //loop through the path, see if we hit any teleport tiles.
	        for(i = 0; i < path_get_number(myPath)-1; i += 1){
	            var _teleport_tile = instance_position(path_get_point_x(myPath,i),path_get_point_y(myPath,i),obj_Teleport_Tile);
	            if(_teleport_tile != noone){//if there is a teleport tile on this node,
	                if(instance_position(path_get_point_x(myPath,i+1),path_get_point_y(myPath,i+1),obj_Teleport_Tile)){//if the next node is also a teleport tile,
	                    //make sure those 2 tiles are linked
	                    for(j=path_get_number(myPath)-1; j >= i+1; j-= 1){
	                        path_delete_point(myPath,j);
	                    }
	                    _object.pathfind_loop = true
	                }
	            }
	        }
        
	        if(path_get_number(myPath)<=1){//if already at end node,
	            event_perform(ev_other,ev_end_of_path);//run end of path
	        }
	        else{
	            path_start(myPath,_path_speed,0,0);
	            xstart = x;
	            ystart = y;
	        }
	    }
	}



}
