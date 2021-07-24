function Lost_Battle() {
	var _script = argument[0];

	if(_script = "none"){//if another script isnt already running
	    switch(obj_Battle_Controller.battle_ID){//Different script per battle
	        default: _script = Player_Was_Defeated(_script); break;//Default's to Important character's death
	    }
	}

	return _script;



}
