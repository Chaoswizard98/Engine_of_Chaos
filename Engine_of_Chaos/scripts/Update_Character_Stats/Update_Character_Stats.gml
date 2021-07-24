function Update_Character_Stats() {
	var _lookup_type = argument[0];
	var _character = argument[1];

	if(_lookup_type = "Global"){
	    with(obj_Character){
	        if(character_ID = global.character_ID[_character]){
	            Set_Character_Stats(id);
	        }
	    }
	}
	else if(_lookup_type = "Local"){
	    Set_Character_Stats(_character);
	}



}
