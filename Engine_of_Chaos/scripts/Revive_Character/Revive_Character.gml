function Revive_Character(_character) {
	//this script revives a character
	global.Current_Health[_character] = global.Max_Health[_character];
	global.Current_Magic[_character] = global.Max_Magic[_character];
	with(obj_Character){
	    if(character_ID = global.character_ID[_character]){
	        Set_Character_Stats(id);
	    }
	}
}