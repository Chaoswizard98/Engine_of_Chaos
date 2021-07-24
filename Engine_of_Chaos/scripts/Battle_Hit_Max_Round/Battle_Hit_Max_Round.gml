function Battle_Hit_Max_Round() {
	var _max_rounds = argument[0];

	if(obj_Battle_Controller.round_number > _max_rounds){
	    return true;
	}

	return false;



}
