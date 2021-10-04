function AI_Do_Nothing(_skip_action,_character) {
	if(!_skip_action){
	    End_Character_Movement(_character,"End_Movement");//reset depth and clear movement tiles
	    End_Turn(_character,"End_Turn");
	    _character.ai_action = "none";
	    return true;
	}
	return true;
}