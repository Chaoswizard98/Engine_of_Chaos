function Player_Was_Defeated() {
	var _script = argument[0];

	if(_script = "none"){
	    if(Battle_Flag_Was_Set(0)){//Player was defeated
	        _script = "Player_Was_Defeated_Default";
	    }
	}

	return _script;



}
