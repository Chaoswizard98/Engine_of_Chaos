function Cure_Status_Effect() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];

	Set_Status_Effect_Stat(_lookup_type,_character,_effect,"Set",0,"Potency");
	Set_Status_Effect_Stat(_lookup_type,_character,_effect,"Set",0,"Turns_Remaining");



}
