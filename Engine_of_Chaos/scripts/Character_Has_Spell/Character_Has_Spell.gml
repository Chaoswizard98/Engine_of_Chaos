function Character_Has_Spell(_lookup_type,_character,_spell){
	var i = 0;
	//Give character spell
	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){//loop through all inventory spaces
	    if(Get_Spell(_lookup_type,_character,i) = _spell){//if character has the spell
	        return true;//return true
	    }
	}
	return false;//character doesnt have spell
}