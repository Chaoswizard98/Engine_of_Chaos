function Apply_Status_Effect() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];
	var _potency = argument[3];
	var _turns_remaining = argument[4];

	if(_potency != 0){
	    if(Get_Character_Status_Effect(_lookup_type,_character,_effect,"Total","Resistance") < irandom_range(1,100)){//if they fail to save against the effect
	        Set_Status_Effect_Stat(_lookup_type,_character,_effect,"Set",_potency,"Potency");//apply effect
	        Set_Status_Effect_Stat(_lookup_type,_character,_effect,"Set",_turns_remaining,"Turns_Remaining");//apply effect
	        return true;
	    }
	}

	return false;



}
