function Character_Is_Dead(_lookup_type,_character){
	if(Get_Character_Health(_lookup_type,_character,"Total") <= 0){
	    return true;
	}
	return false;
}