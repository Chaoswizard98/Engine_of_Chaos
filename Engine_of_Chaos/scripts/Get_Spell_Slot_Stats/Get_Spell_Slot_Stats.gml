function Get_Spell_Slot_Stats() {
	//returns the given stat for the selected item
	var _lookup_type, _character, _spell_slot, _spell_level, _return_stat;
	_lookup_type = argument[0];
	_character = argument[1];
	_spell_slot = argument[2];
	_spell_level = argument[3]
	_return_stat = argument[4];

	if(_spell_level = -1){
	    _spell_level = Get_Spell_Level(_lookup_type,_character,_spell_slot);
	}

	return Get_Effect_Stats(Get_Spell(_lookup_type,_character,_spell_slot),_spell_level,_return_stat,_lookup_type,_character);



}
