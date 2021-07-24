function AStar_getNeighbors(argument0) {

	// Arguments:
	// 0 - node
	//
	// Returns:
	// list of nodes that are accesible in one step from the argument node

	var list,a,b,c,d,listGet,a1,b1;
	list = ds_list_create();
	a = ds_map_find_value(argument0,"x");
	b = ds_map_find_value(argument0,"y");

	for (c=0; c<8; c+=!allowDiag+1) {
	    if (!ds_map_find_value(cells[a,b],"dir"+string(c))) {
	        d = c * pi / 4;
	        a1 = a + round(cos(d));
	        b1 = b - round(sin(d));
        
	        if (a1 >= 0 && b1 >= 0 && a1 < GRID_WIDTH && b1 < GRID_HEIGHT) {
	            listGet = cells[a1,b1];
	            can = 1;
	            if (!allowCut) && (c mod 2) {
	                if (ds_map_find_value(cells[a,b1],"blocked"))
	                or (ds_map_find_value(cells[a1,b],"blocked"))
	                    can = 0;
	            }
	            if (can){
	                if (!ds_map_find_value(listGet,"blocked")){
	                    if (!ds_map_find_value(listGet,"dir"+string((c+4) mod 8))){
	                        ds_list_add(list,listGet);
	                    }
	                }
	            }
	        }
	    }
	}
	//====(Test next tile over)
	var _stair;
	_stair = instance_position((a-1)*global.Tile_Size,b*global.Tile_Size,obj_Stair_Left_Parent);//are we moving into a stair tile?
	if(_stair != noone){//if there is a stair here,
	    listGet = cells[(a-1),(b+_stair.delta_y)];//add the destination tile to the list
	    ds_list_add(list,listGet);//add it to the list
	}
	_stair = instance_position((a+1)*global.Tile_Size,b*global.Tile_Size,obj_Stair_Right_Parent);//are we moving into a stair tile?
	if(_stair != noone){//if there is a stair here,
	    listGet = cells[(a+1),(b+_stair.delta_y)];//add the destination tile to the list
	    ds_list_add(list,listGet);//add it to the list
	}
	//====
	//Test for teleport tiles
	var _teleport_tile = instance_position(a*global.Tile_Size,b*global.Tile_Size,obj_Teleport_Tile);//get teleport tile at this location
	if(_teleport_tile!=noone){//if there is a tile here,
	    listGet = cells[_teleport_tile.linked_tile.x/global.Tile_Size,_teleport_tile.linked_tile.y/global.Tile_Size];//get the tile it's linked to
	    ds_list_add(list,listGet);//add it to the list
	}

	return list;





}
