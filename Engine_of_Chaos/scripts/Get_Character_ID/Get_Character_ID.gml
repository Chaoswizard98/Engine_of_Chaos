function Get_Character_ID(_lookup_type,_character,_formula){
	if(_lookup_type = "Global"){
	    return global.character_ID[_character];
	}
	else if(_lookup_type = "Local"){
	    return _character.character_ID;
	}
}