function Update_Terrain_Type(_x,_y,_terrain){
	obj_Terrain_Controller.terrain_map[_x/global.Tile_Size,_y/global.Tile_Size] = _terrain;
}