function Setup_Room_Transfer_Tile() {
	var _tile = argument[0];
	var _room = argument[1];
	var _ID = argument[2];
	var _direction = argument[3];
	var _transition_type = "Screen_Fade";

	if(argument_count > 4){
	    _transition_type = argument[4];
	}


	with(_tile){
	    next_room = _room;//room to spawn player in
	    tile_ID = _ID;//ID of tile to spawn player on in next room
	    start_direction = _direction;//direction player faces when spawning on this tile
	    transition_type = _transition_type;//screen transition type
	}



}
