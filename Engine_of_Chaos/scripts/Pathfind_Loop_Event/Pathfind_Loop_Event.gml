function Pathfind_Loop_Event(_object) {
	//for teleport tiles / other future breakpoints
	with(_object){
	    var _teleport_tile = instance_position(round(x),round(y),obj_Teleport_Tile);
	    if(_teleport_tile != noone){//if we hit a teleport tile,
			Start_Cutscene(_teleport_tile.pathfinding_cutscene_ID,noone,_object);
	    }
	}
}