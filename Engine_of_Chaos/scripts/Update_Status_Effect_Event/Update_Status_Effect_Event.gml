function Update_Status_Effect_Event() {
	//deal damage or perform an update
	var _character = argument[0];
	var _effect = argument[1];

	switch(_effect){
	    case "Poison":
	        Set_Character_Health("Local",_character,"Remove",Get_Character_Status_Poison("Local",_character,"Total","Potency"));
	    break;
	    case "Bleed":
	        Set_Character_Health("Local",_character,"Remove",Get_Character_Status_Bleed("Local",_character,"Total","Potency"));
	    break;
	}



}
