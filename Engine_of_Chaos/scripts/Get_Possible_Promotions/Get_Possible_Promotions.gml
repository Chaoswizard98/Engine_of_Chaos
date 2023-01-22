function Get_Possible_Promotions(_character) {
	//This script gets the possible promotions a character can have
	//and fills the church controller with said options (returns # of possible promotions)
	var _new_class = "none";
	number_of_promotions = 0;//set church promotion_index to 0

	var i;
	for(i = 1; i<=5; i+=1){//loop through all 5 possible class promotions
	    _new_class = Get_Character_Level_Scheme_Stats(lookup_type,_character,("Promotion_"+string(i)),"Base",Get_Character_Level(lookup_type,_character,"Total"));//get new class
	    if(Character_Meets_Promotion_Requirements(lookup_type,_character,_new_class)){//if character meets the requirements,
	        promotion_array[number_of_promotions] = _new_class;
	        number_of_promotions += 1;
	    }
	}

	return number_of_promotions;
}