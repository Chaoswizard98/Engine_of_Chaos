function AStar_init(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11) {
	// Call this script before using any other AStar function. If you want
	// to change the number or size of cells later, you have to first call
	// AStar_free() and then initialize the system again.
	// 
	// Arguments:
	// 0 - Number of cells horizontally
	// 1 - Number of cells vertically
	// 2 - Width of a cell
	// 3 - Height of a cell
	// 4 - X offset of the grid
	// 5 - Y offset of the grid
	// 6 - Allow diagonal movement
	// 7 - Allow cutting through obstacles when moving diagonally
	// 8 - Cost for moving straight (left, right, up, down) between two cells
	// 9 - Cost for moving diagonally between two cells
	// 10 - Coordinates in arguments - 0...expect real coordinates (0,20,40...)
	//                                1...expect grid coordinates (0,1,2...)
	// 11 - Path returning mode - 0...use and return an internal path
	//                           1...always return a new path
	// 
	// For arguments 6 to 10: -2 means to use the default value.
	// Arguments 6 to 10 can be changed later without reinitializing the engine,
	//  using the AStar_setAll script.
	// Arguments 8 and 9 can only take values larger than 0 (except -2).
	//
	// Returns: nothing

	instance_create_layer(0,0,"Terrain_Instance_Layer",objPathFinder);
	with (objPathFinder) {
	    def_allowDiag = 1;
	    def_allowCut = 0;
	    def_costNormal = 1;
	    def_costDiag = 1.4;
	    def_coordMode = 1;
    
	    allowDiag = def_allowDiag;
	    allowCut = def_allowCut;
	    costNormal = def_costNormal;
	    costDiag = def_costDiag;
	    coordMode = def_coordMode;

	    GRID_WIDTH = argument0;
	    GRID_HEIGHT = argument1;
	    CELL_WIDTH = argument2;
	    CELL_HEIGHT = argument3;
	    X_OFFSET = argument4;
	    Y_OFFSET = argument5;
	    if (argument6 != -2) allowDiag = argument6;
	    if (argument7 != -2) allowCut = argument7;
	    if (argument8 > 0) costNormal = argument8;
	    if (argument9 > 0) costDiag = argument9;
	    if (argument10 != -2) coordMode = argument10;
	    pathMode = argument11;
    
	    var a;
	    for (a=0; a<GRID_WIDTH; a+=1) {
	        for (b=0; b<GRID_HEIGHT; b+=1) {
	            cells[a,b] = ds_map_create();
	            ds_map_add(cells[a,b],"x",a);
	            ds_map_add(cells[a,b],"y",b);
	            ds_map_add(cells[a,b],"blocked",0);
	            ds_map_add(cells[a,b],"dir0",0);
	            ds_map_add(cells[a,b],"dir1",0);
	            ds_map_add(cells[a,b],"dir2",0);
	            ds_map_add(cells[a,b],"dir3",0);
	            ds_map_add(cells[a,b],"dir4",0);
	            ds_map_add(cells[a,b],"dir5",0);
	            ds_map_add(cells[a,b],"dir6",0);
	            ds_map_add(cells[a,b],"dir7",0);
	            ds_map_add(cells[a,b],"pathParent",-1);
	            ds_map_add(cells[a,b],"costFromStart",0);
	            ds_map_add(cells[a,b],"estimatedCostToGoal",0);
	        }
	    }
    
	    if (!pathMode) {
	        thePath = path_add();
	        path_set_closed(thePath,0);
	    }
	}





}
