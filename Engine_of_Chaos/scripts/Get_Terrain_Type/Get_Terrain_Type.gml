function Get_Terrain_Type(_x,_y){
	if(Edge_Of_Room(_x,_y)){//if the destination is outside the array
	    return "Null";
	}
	return obj_Terrain_Controller.terrain_map[round(_x/global.Tile_Size),round(_y/global.Tile_Size)];
}