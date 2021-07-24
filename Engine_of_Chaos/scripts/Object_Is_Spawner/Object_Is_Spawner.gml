function Object_Is_Spawner() {
	//test if the object is a character
	var _object = argument[0];

	if((object_is_ancestor(_object.object_index,obj_Enemy_Spawner))||(_object.object_index = obj_Enemy_Spawner)){
	    return true;
	}

	return false;



}
