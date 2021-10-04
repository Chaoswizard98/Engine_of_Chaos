function Object_Is_Character(_object) {
	//test if the object is a character
	if((object_is_ancestor(_object.object_index,obj_Character))||(_object.object_index = obj_Character)){
	    return true;
	}
	return false;
}