function AI_Do_Nothing() {
	var _skip_action = argument[0];
	var _character = argument[1];

	if(!_skip_action){
	    End_Character_Movement(_character,"End_Movement");//reset depth and clear movement tiles
	    End_Turn(_character,"End_Turn");
	    _character.ai_action = "none";
	    return true;
	}
	return true;



}
