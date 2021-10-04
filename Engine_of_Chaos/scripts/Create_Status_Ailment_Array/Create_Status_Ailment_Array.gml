function Create_Status_Ailment_Array(_lookup_type,_character) {
	//Creates an array of status ailment icons for member list and status pages
	number_of_status_ailments = 0;
	status_ailment_array[number_of_status_ailments] = noone;

	if(Character_Is_Cursed(_lookup_type,_character)){//curse
	    status_ailment_array[number_of_status_ailments] = spr_Cursed_Icon;
	    number_of_status_ailments += 1;
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Poison")){//poison
	    status_ailment_array[number_of_status_ailments] = spr_Poisoned_Icon;
	    number_of_status_ailments += 1;
	}
	/*if(Character_Is_Muddled(_lookup_type,_character)){//muddle
	    status_ailment_array[number_of_status_ailments] = spr_Muddled_Icon;
	    number_of_status_ailments += 1;
	}*/
	if(Character_Is_Under_Effect(_lookup_type,_character,"Silence")){//silence
	    status_ailment_array[number_of_status_ailments] = spr_Silenced_Icon;
	    number_of_status_ailments += 1;
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Paralysis")){//paralyzed
	    status_ailment_array[number_of_status_ailments] = spr_Paralyzed_Icon;
	    number_of_status_ailments += 1;
	}
	if(Character_Is_Under_Effect(_lookup_type,_character,"Sleep")){//sleeping
	    status_ailment_array[number_of_status_ailments] = spr_Sleeping_Icon;
	    number_of_status_ailments += 1;
	}
	/*if(Character_Is_Strengthened(_lookup_type,_character)){//strengthened
	    status_ailment_array[number_of_status_ailments] = spr_Strengthened_Icon;
	    number_of_status_ailments += 1;
	}
	if(Character_Is_Boosted(_lookup_type,_character)){//boosted
	    status_ailment_array[number_of_status_ailments] = spr_Boosted_Icon;
	    number_of_status_ailments += 1;
	}
	if(Character_Is_Slowed(_lookup_type,_character)){//slowed
	    status_ailment_array[number_of_status_ailments] = spr_Slowed_Icon;
	    number_of_status_ailments += 1;
	}*/
}