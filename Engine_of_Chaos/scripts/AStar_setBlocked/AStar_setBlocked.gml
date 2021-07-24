function AStar_setBlocked(argument0, argument1, argument2) {

	// Arguments:
	// 0 - x
	// 1 - y
	// 2 - 0...Free, 1...Blocked
	//
	// Returns: nothing

	with (objPathFinder) {
	    if (coordMode)
	        ds_map_replace(cells[argument0,argument1],"blocked",argument2);
	    else
	        ds_map_replace(cells[floor((argument0-X_OFFSET)/CELL_WIDTH),
	                       floor((argument1-Y_OFFSET)/CELL_HEIGHT)],
	                       "blocked",argument2);
	}




}
