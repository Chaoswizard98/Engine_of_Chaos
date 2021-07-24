function Get_Spell_Slot() {
	//returns the slot that the given spell is in or -1 if they dont have the spell
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _spell = argument[2];

	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){
	    if(Get_Spell(_lookup_type,_character,i) = _spell){
	        return i;
	    }
	}

	return -1;



}
