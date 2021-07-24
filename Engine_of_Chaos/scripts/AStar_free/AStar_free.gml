function AStar_free() {

	// Arguments: none
	// Returns: nothing

	with (objPathFinder) {
	    var a;
	    for (a=0; a<GRID_WIDTH; a+=1) {
	        for (b=0; b<GRID_HEIGHT; b+=1) {
	            ds_map_destroy(cells[a,b]);
	        }
	    }
	    if (!pathMode)
	        path_delete(thePath);
	    instance_destroy();
	}




}
