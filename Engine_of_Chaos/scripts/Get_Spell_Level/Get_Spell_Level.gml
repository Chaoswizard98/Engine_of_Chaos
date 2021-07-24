function Get_Spell_Level() {
	//gets the item in the given item slot
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _spell_slot = argument[2];

	if(_lookup_type = "Global"){
	    return global.Spell_Level[_character,_spell_slot];
	}
	else if(_lookup_type = "Local"){
	    return _character.spell_level[_spell_slot];
	}



}
