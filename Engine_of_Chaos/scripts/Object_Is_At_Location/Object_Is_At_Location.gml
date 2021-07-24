function Object_Is_At_Location() {
	//Tests if a given object is at a given location
	var _object = argument[0];
	var _x = argument[1];
	var _y = argument[2];

	if((round(_object.x) = _x)&&(round(_object.y) = _y)){
	    return true;
	}
	return false;



}
