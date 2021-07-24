function Get_Terrain_Type() {
	var _x = argument[0];
	var _y = argument[1];

	if(Edge_Of_Room(_x,_y)){//if the destination is outside the array
	    return "Null";
	}

	return obj_Terrain_Controller.terrain_map[round(_x/global.Tile_Size),round(_y/global.Tile_Size)];



}
