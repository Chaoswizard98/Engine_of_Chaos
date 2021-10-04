function Edge_Of_Room(_x,_y){
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