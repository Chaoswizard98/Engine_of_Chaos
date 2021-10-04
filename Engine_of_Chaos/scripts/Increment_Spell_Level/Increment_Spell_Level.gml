function Increment_Spell_Level(_lookup_type,_character,_spell,_level){
	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){//loop through all spell slots
	    if(Get_Spell(_lookup_type,_character,i) = _spell){//if this is the correct spell
	        if(Get_Spell_Level(_lookup_type,_character,i)<_level){
	            return _spell;
	        }
	    }
	}
	return "none";
}