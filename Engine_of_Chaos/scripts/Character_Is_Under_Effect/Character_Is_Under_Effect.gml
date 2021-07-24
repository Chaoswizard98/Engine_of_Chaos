function Character_Is_Under_Effect() {
	//checks to see if a character has a given effect
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];

	if(Get_Character_Status_Effect(_lookup_type,_character,_effect,"Total","Turns_Remaining") != 0){//if turns remaining isnt 0,
	    return true;//we're under this effect
	}

	return false;



}
