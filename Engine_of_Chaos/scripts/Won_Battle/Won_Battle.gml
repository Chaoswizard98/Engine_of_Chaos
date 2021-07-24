function Won_Battle() {
	var _script = argument[0];

	if(_script = "none"){//if another script isnt already running
	    switch(obj_Battle_Controller.battle_ID){//Different script per battle
	        default: /*_script = Boss_Was_Defeated(_script); */_script = Defeated_All_Enemies(_script); break;//Default's to Boss Death or All Enemies defeated.
	    }
	}

	return _script;



}
