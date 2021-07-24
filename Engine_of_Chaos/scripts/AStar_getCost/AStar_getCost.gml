function AStar_getCost(argument0, argument1, argument2) {

	// Arguments:
	// 0 - node 1
	// 1 - node 2
	// 2 - movement_type
	// Returns:
	// exact cost of moving from node 1 to node 2

	if ((ds_map_find_value(argument0,"x") - ds_map_find_value(argument1,"x"))*(ds_map_find_value(argument0,"y") - ds_map_find_value(argument1,"y")) == 0){
	        //return costNormal;
	    /*if(global.CursorPathfinding){
	        return costNormal;
	    }
	    else{
	        return FindNewCost(ds_map_find_value(argument1,"x"),ds_map_find_value(argument1,"y"),Cursor.TurnOrder[Cursor.CurrentTurn],instance_position(ds_map_find_value(argument1,"x"),ds_map_find_value(argument1,"y"),objCell).TerrainType,false);
	    }*/
	    //obj_Terrain_Controller.terrain_map[_x/global.Tile_Size,_y/global.Tile_Size]
	    //show_message(string(Get_Movement_Cost(Get_Terrain_Type(ds_map_find_value(argument1,"x")*global.Tile_Size,ds_map_find_value(argument1,"y")*global.Tile_Size),argument2)));
	    //show_message(string(Get_Movement_Cost(Get_Terrain_Type(ds_map_find_value(argument1,"x")*global.Tile_Size,ds_map_find_value(argument1,"y")*global.Tile_Size),argument2)));
	    return Get_Movement_Cost(Get_Terrain_Type(ds_map_find_value(argument1,"x")*global.Tile_Size,ds_map_find_value(argument1,"y")*global.Tile_Size),argument2);
	}
	return costDiag;



}
