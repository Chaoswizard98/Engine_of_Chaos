function Cure_Status_Effect(_lookup_type,_character,_effect){
	if(Character_Is_Under_Effect(_lookup_type,_character,_effect)){
		Set_Status_Effect_Stat(_lookup_type,_character,_effect,"Set",0,"Potency");
		Set_Status_Effect_Stat(_lookup_type,_character,_effect,"Set",0,"Turns_Remaining");
		return true;
	}
	return false;
}