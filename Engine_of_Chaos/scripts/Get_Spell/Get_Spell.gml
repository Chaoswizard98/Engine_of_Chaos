function Get_Spell(_lookup_type,_character,_spell_slot){
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