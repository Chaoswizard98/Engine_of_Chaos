function AStar_getCost(argument0, argument1, argument2) {

	// Arguments:
	// 0 - node 1
	// 1 - node 2
	// 2 - movement_type
	// Returns:
	// exact cost of moving from node 1 to node 2

	if ((ds_map_find_value(argument0,"x") - ds_map_find_value(argument1,"x"))*(ds_map_find_value(argument0,"y") - ds_map_find_value(argument1,"y")) == 0){
	    return Get_Movement_Cost(Get_Terrain_Type(ds_map_find_value(argument1,"x")*global.Tile_Size,ds_map_find_value(argument1,"y")*global.Tile_Size),argument2);
	}
	return costDiag;



}
