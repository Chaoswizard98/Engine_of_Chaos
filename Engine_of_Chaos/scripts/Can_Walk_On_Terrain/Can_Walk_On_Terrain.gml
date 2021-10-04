function Can_Walk_On_Terrain(_terrain,_movement_type){
	if(_terrain != "Null"){
		if(Get_Terrain_Stats(_terrain,"Movement_Cost",_movement_type)!=0){
			return true;
		}
	}
	return false;
}