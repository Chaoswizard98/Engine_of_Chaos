function AStar_setDirBlocked(argument0, argument1, argument2, argument3) {

	// Arguments:
	// 0 - x
	// 1 - y
	// 2 - Direction - 0 to 7 (east to southeast)
	// 3 - 0...Free, 1...Blocked
	//
	// Returns: nothing

	with (objPathFinder) {
	    if (coordMode)
	        ds_map_replace(cells[argument0,argument1],
	                       "dir"+string(argument2),argument3);
	    else
	        ds_map_replace(cells[floor((argument0-X_OFFSET)/CELL_WIDTH),
	                       floor((argument1-Y_OFFSET)/CELL_HEIGHT)],
	                       "dir"+string(argument2),argument3);
	}




}
