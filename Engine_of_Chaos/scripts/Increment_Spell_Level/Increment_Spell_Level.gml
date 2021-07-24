function Increment_Spell_Level() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _spell = argument[2];
	var _level = argument[3];

	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){//loop through all spell slots
	    if(Get_Spell(_lookup_type,_character,i) = _spell){//if this is the correct spell
	        if(Get_Spell_Level(_lookup_type,_character,i)<_level){
	            return _spell;
	        }
	    }
	}

	return "none";



}
