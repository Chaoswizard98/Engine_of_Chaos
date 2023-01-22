function Setup_Room_Transfer_Tile(_tile,_room,_ID,_direction,_transition_type="Screen_Fade") {
	with(_tile){
	    next_room = _room;//room to spawn player in
	    tile_ID = _ID;//ID of tile to spawn player on in next room
	    start_direction = _direction;//direction player faces when spawning on this tile
	    transition_type = _transition_type;//screen transition type
	}
}