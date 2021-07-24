function Find_Distance_Radius() {
	//Finds the distance between 2 characters in tiles
	var _x1, _x2, _y1, _y2, _x_total, _y_total;
	_x1 = argument[0];
	_y1 = argument[1];
	_x2 = argument[2];
	_y2 = argument[3];

	_x_total = abs(_x1 - _x2)/global.Tile_Size;
	_y_total = abs(_y1 - _y2)/global.Tile_Size;

	if((_x_total)>(_y_total)){
	    return _x_total;
	}
	else{
	    return _y_total;
	}




}
