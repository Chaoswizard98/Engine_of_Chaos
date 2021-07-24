function Spell_Slots_Are_Full() {
	var _lookup_type = argument[0];
	var _character = argument[1];

	if(Get_Spell(_lookup_type,_character,(global.Number_Of_Spell_Slots-1)) = "none"){
	    return false;
	}

	return true;



}
