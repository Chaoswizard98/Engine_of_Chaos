function Update_Terrain_Type() {
	var _x = argument[0];
	var _y = argument[1];
	var _terrain = argument[2];

	obj_Terrain_Controller.terrain_map[_x/global.Tile_Size,_y/global.Tile_Size] = _terrain;



}
