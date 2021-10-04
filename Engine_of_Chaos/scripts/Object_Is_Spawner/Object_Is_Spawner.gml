function Object_Is_Spawner(_object) {
	//test if the object is a character
	if((object_is_ancestor(_object.object_index,obj_Enemy_Spawner))||(_object.object_index = obj_Enemy_Spawner)){
	    return true;
	}
	return false;
}