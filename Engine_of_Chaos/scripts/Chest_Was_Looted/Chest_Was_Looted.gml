function Chest_Was_Looted(_chest_ID){
	if(global.Chest_Looted[_chest_ID]){
		return true;	
	}
	return false;
}