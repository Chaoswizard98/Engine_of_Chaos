function AStar_getEstimatedCost(argument0, argument1) {

	// Arguments:
	// 0 - node 1
	// 1 - node 2
	//
	// Returns:
	// estimated cost of moving from node 1 to node 2

	if (allowDiag) {
	    var xDist,yDist;
	    xDist = abs(ds_map_find_value(argument0,"x") - ds_map_find_value(argument1,"x"));
	    yDist = abs(ds_map_find_value(argument0,"y") - ds_map_find_value(argument1,"y"));
	    return costDiag * (xDist+yDist);//My Heuristic
	        /*if (xDist >= yDist)//Default Heuristic
	        return costDiag * yDist + costNormal * (xDist - yDist);
	    else
	        return costDiag * xDist + costNormal * (yDist - xDist);*/
	}
	return abs(ds_map_find_value(argument0,"x") - ds_map_find_value(argument1,"x"))
	       + abs(ds_map_find_value(argument0,"y") - ds_map_find_value(argument1,"y"));




}
