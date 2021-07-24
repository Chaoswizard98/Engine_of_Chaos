function Clear_Movement_Range() {
	//destroys the move tile objects and clears the movement range
	with(obj_Movement_Tile){
	    Disable_Tile_Movement(x,y);
	}
	instance_destroy(obj_Movement_Tile);



}
