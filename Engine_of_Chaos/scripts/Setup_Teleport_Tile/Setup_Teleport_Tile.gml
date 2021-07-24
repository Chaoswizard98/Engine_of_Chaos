function Setup_Teleport_Tile() {
	tile_ID = argument[0];//ID of this tile
	linked_tile_ID = argument[1];//ID of the tile we're linked to

	if(argument_count > 2){
	    manual_movement_cutscene_ID = argument[2];//Script to play when manually stepping on tile
	}
	if(argument_count > 3){
	    pathfinding_cutscene_ID = argument[3];//script to play when pathfinding through this tile
	}



}
