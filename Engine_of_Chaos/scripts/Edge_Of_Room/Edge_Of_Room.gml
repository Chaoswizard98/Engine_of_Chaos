function Edge_Of_Room() {
	var _x,_y;
	_x = argument[0];
	_y = argument[1];

	//Room edges
	if(_x >= room_width){
	    return true;
	}
	if(_x< 0){
	    return true;
	}
	if(_y >= room_height){
	    return true;
	}
	if(_y< 0){
	    return true;
	}



}
