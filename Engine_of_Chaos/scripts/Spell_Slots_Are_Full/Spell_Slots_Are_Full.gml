function Spell_Slots_Are_Full(_lookup_type,_character){
	if(Get_Spell(_lookup_type,_character,(global.Number_Of_Spell_Slots-1)) = "none"){
	    return false;
	}
	return true;
}