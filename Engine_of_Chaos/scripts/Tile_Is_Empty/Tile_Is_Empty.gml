function Tile_Is_Empty() {
	//make sure the tile is empty
	var _object = argument[0];
	with(_object){//instance_place requires the object to run the code
	    if(instance_place(_object.x,_object.y,obj_Character)!= noone){//if there is a character at this location
	        return false;
	    }
	    if(instance_place(_object.x,_object.y,obj_Teleport_Tile)!= noone){//if there is a teleport tile at this location
	        return false;
	    }
	}

	return true;



}
