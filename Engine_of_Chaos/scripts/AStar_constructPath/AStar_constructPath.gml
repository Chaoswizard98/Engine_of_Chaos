function AStar_constructPath(argument0, argument1, argument2, argument3) {

	// Arguments:
	// 0 - goal node
	// 1 - start node x
	// 2 - start node y
	// 3 - center (true/false)
	//
	// Returns:
	// path id

	var node,pathList,a,b;
	node = argument0;

	pathList = ds_list_create();
	while (ds_map_find_value(node,"pathParent") > -1) {
	    ds_list_insert(pathList,0,node);
	    node = ds_map_find_value(node,"pathParent");
	}

	if (pathMode) {
	    thePath = path_add();
	    path_set_closed(thePath,0);
	}
	else
	    path_clear_points(thePath);

	path_add_point(thePath,argument1,argument2,100);
	for (a=0; a<ds_list_size(pathList); a+=1) {
	    node = ds_list_find_value(pathList,a);
	    path_add_point(thePath,(ds_map_find_value(node,"x")+argument3/2)
	                   *CELL_WIDTH+X_OFFSET,(ds_map_find_value(node,"y")
	                   +argument3/2)*CELL_HEIGHT+Y_OFFSET,100);
	}

	ds_list_destroy(pathList);

	return thePath;



}
