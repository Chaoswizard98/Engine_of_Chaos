function AStar_findPath(argument0, argument1, argument2, argument3, argument4, argument5) {

	// Arguments:
	// 0 - x1
	// 1 - y1
	// 2 - x2
	// 3 - y2
	// 4 - center (true/false)
	// 5 - movement_type
	//
	// Returns:
	// path id if successful, -1 if unsuccessful

	with (objPathFinder) {

	var startNode,goalNode,openList,closedList,node,neighbors,i,neighborNode,
	    isOpen,isClosed,costFromStart;

	if (coordMode) {
	    startNode = cells[argument0,argument1];
	    goalNode = cells[argument2,argument3];
	    argument0 = argument0 * CELL_WIDTH + X_OFFSET;
	    argument1 = argument1 * CELL_HEIGHT + Y_OFFSET;
	} else {
	    startNode = cells[floor((argument0-X_OFFSET)/CELL_WIDTH),
	                floor((argument1-Y_OFFSET)/CELL_HEIGHT)];
	    goalNode = cells[floor((argument2-X_OFFSET)/CELL_WIDTH),
	               floor((argument3-Y_OFFSET)/CELL_HEIGHT)];
	}

	if (ds_map_find_value(goalNode,"blocked"))
	    return -1;

	openList = ds_priority_create();
	closedList = ds_list_create();

	ds_map_replace(startNode,"costFromStart",0);
	ds_map_replace(startNode,"estimatedCostToGoal",AStar_getEstimatedCost(startNode,goalNode));
	ds_map_replace(startNode,"pathParent",-1);
	ds_priority_add(openList,startNode,ds_map_find_value(startNode,"costFromStart")+ds_map_find_value(startNode,"estimatedCostToGoal"));
	while (!ds_priority_empty(openList)) {
	    node = ds_priority_delete_min(openList);
	    if (node == goalNode) {
	        ds_priority_destroy(openList);
	        ds_list_destroy(closedList);
	        return AStar_constructPath(goalNode,argument0,argument1,argument4);
	    }
	    neighbors = AStar_getNeighbors(node);
	    for (i=0; i<ds_list_size(neighbors); i+=1) {
	        neighborNode = ds_list_find_value(neighbors,i);
	        if (ds_priority_find_priority(openList,neighborNode) > 0)
	            isOpen = 1;
	        else isOpen = 0;
	        if (ds_list_find_index(closedList,neighborNode) > -1)
	            isClosed = 1;
	        else isClosed = 0;
        
	        costFromStart = ds_map_find_value(node,"costFromStart") + AStar_getCost(node,neighborNode,argument5);
	        if ((!isOpen && !isClosed) || (costFromStart < ds_map_find_value(neighborNode,"costFromStart"))) {
	            ds_map_replace(neighborNode,"pathParent",node);
	            ds_map_replace(neighborNode,"costFromStart",costFromStart);
	            ds_map_replace(neighborNode,"estimatedCostToGoal",
	                           AStar_getEstimatedCost(neighborNode,goalNode));
	            if (isClosed)
	                ds_list_delete(closedList,ds_list_find_index(closedList,neighborNode));
	            if (!isOpen) {
	                ds_priority_add(openList,neighborNode,ds_map_find_value(neighborNode,"costFromStart")
	                                +ds_map_find_value(neighborNode,"estimatedCostToGoal"));
	            }
	        }
	    }
	    ds_list_destroy(neighbors);
	    ds_list_add(closedList,node);
	}

	ds_priority_destroy(openList);
	ds_list_destroy(closedList);

	return -1;

	}






}
