function Tile_Is_Within_Movement_Range() {
	var _x = argument[0];
	var _y = argument[1];

	if(Edge_Of_Room(_x,_y)){//if the destination is outside the array
	    return false;
	}

	return obj_Terrain_Controller.battle_movement_map[round(_x/global.Tile_Size),round(_y/global.Tile_Size)];



}
