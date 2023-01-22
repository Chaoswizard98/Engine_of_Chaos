function Set_Chest_Looted(_chest){
	_chest.looted = true;
	_chest.image_index = 1;//open chest
	_chest.can_interact_in_battle = false;
	if(_chest.chest_ID != -1){
	    global.Chest_Looted[_chest.chest_ID] = true;//Mark as looted 
	}
}