function Character_Meets_Promotion_Requirements(_lookup_type,_character,_new_class){
	if(_new_class = "none"){//If new class is invalid
	    return false;//return false
	}
	else{//we have a valid class
	    return(Get_Level_Scheme_Stats(_lookup_type,_character,_new_class,"Meets_Requirements","Base",Get_Character_Level(_lookup_type,_character,"Total")));//return test result
	}
}