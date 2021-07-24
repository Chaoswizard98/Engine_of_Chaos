function Object_Is_Character() {
	//test if the object is a character
	var _object = argument[0];

	if((object_is_ancestor(_object.object_index,obj_Character))||(_object.object_index = obj_Character)){
	    return true;
	}

	return false;



}
