function Battle_Hit_Max_Round(_max_rounds){
	if(obj_Battle_Controller.round_number > _max_rounds){
	    return true;
	}
	return false;
}