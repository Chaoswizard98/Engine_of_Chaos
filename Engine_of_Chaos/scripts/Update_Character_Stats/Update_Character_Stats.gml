function Update_Character_Stats(_lookup_type,_character){
	if(_lookup_type = "Global"){
	    with(obj_Character){
	        if(character_ID = global.character_ID[_character]){
				Set_Town_Party_Member_Stats(_character);
				Set_Appearance(id);
	        }
	    }
	}
}
