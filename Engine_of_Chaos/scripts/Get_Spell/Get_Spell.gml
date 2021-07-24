function Get_Spell() {
	//gets the item in the given item slot
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _spell_slot = argument[2];

	if(_spell_slot = -1){//if the item slot is invalid
	    return "none";//return the null spell
	}
	else{
	    if(_lookup_type = "Global"){
	        return global.Spells[_character,_spell_slot];
	    }
	    else if(_lookup_type = "Local"){
	        return _character.spells[_spell_slot];
	    }
	}



}
