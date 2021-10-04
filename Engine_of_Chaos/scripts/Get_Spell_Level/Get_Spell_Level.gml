function Get_Spell_Level(_lookup_type,_character,_spell_slot){
	if(_spell_slot != -1){
		if(_lookup_type = "Global"){
		    return global.Spell_Level[_character,_spell_slot];
		}
		else if(_lookup_type = "Local"){
		    return _character.spell_level[_spell_slot];
		}
	}
	return -1;
}