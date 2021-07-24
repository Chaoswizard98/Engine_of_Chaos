function Can_Walk_On_Terrain() {
	var _terrain = argument[0];
	var _movement_type = argument[1];

	if(Get_Movement_Cost(_terrain,_movement_type)!=0){
	    return true;
	}
	return false;



}
