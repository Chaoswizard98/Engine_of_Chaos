function Pathfind_Loop_Event() {
	//for teleport tiles / other future breakpoints
	var _object = argument[0];

	with(_object){
	    var _teleport_tile = instance_position(round(x),round(y),obj_Teleport_Tile);
	    if(_teleport_tile != noone){//if we hit a teleport tile,
	        Create_Cutscene_Controller(_teleport_tile.pathfinding_cutscene_ID,"Battle_Cutscene",0,noone,_object);//run teleport cutscene
	    }
	}



}
