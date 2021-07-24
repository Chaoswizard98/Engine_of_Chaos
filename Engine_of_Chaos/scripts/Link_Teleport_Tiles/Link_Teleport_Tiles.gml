function Link_Teleport_Tiles() {
	var _tile_ID;
	var _parent;
	with(obj_Teleport_Tile){
	    _tile_ID = linked_tile_ID;//the ID we're searching for
	    _parent = id;
	    with(obj_Teleport_Tile){
	        if(_tile_ID = tile_ID){
	            _parent.linked_tile = id;
	            break;
	        }
	    }
	}



}
