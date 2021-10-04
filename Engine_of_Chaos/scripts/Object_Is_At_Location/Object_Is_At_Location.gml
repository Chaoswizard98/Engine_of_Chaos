function Object_Is_At_Location(_object,_x,_y) {
	//Tests if a given object is at a given location
	if((round(_object.x) = _x)&&(round(_object.y) = _y)){
	    return true;
	}
	return false;
}