function Get_AI_Region() {
	var _x = argument[0];
	var _y = argument[1];

	if(Edge_Of_Room(_x,_y)){//if the destination is outside the array
	    return 0;
	}

	return obj_Terrain_Controller.ai_region_map[round(_x/global.Tile_Size),round(_y/global.Tile_Size)];



}
