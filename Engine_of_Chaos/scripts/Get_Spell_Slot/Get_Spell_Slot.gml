function Get_Spell_Slot(_lookup_type,_character,_spell) {
	//returns the slot that the given spell is in or -1 if they dont have the spell
	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){
	    if(Get_Spell(_lookup_type,_character,i) = _spell){
	        return i;
	    }
	}

	return -1;
}