function Character_Meets_Promotion_Requirements() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _new_class = argument[2];

	if(_new_class = "none"){//If new class is invalid
	    return false;//return false
	}
	else{//we have a valid class
	    return(Get_Level_Scheme_Stats(_lookup_type,_character,_new_class,"Meets_Requirements","Base"));//return test result
	}



}
