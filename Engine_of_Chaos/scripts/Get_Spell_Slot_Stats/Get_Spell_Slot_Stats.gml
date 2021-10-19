function Get_Spell_Slot_Stats(_lookup_type, _character, _spell_slot, _spell_level, _return_stat){
	if(_spell_level = -1){
	    _spell_level = Get_Spell_Level(_lookup_type,_character,_spell_slot);
	}
	return Get_Spell_Stats(Get_Spell(_lookup_type,_character,_spell_slot),_spell_level,_return_stat,_lookup_type,_character);
}