function Enable_Tile_Movement() {
	var _x = argument[0];
	var _y = argument[1];

	if(!Edge_Of_Room(_x,_y)){//if the destination is not outside the array
	    obj_Terrain_Controller.battle_movement_map[_x/global.Tile_Size,_y/global.Tile_Size] = true;//can move here
	}



}
