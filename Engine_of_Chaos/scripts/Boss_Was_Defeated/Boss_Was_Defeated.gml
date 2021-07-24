function Boss_Was_Defeated() {
	var _script = argument[0];

	if(_script = "none"){
	    if(Battle_Flag_Was_Set(1)){//Boss was defeated
	        _script = "Boss_Was_Defeated_Default";
	    }
	}

	return _script;



}
