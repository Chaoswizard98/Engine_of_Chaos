function Get_Character_ID() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	if(_lookup_type = "Global"){
	    return global.character_ID[_character];
	}
	else if(_lookup_type = "Local"){
	    return _character.character_ID;
	}



}
