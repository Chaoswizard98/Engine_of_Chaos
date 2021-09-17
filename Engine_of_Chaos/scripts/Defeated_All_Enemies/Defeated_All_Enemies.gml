function Defeated_All_Enemies() {
	var _script = argument[0];

	if(_script = "none"){
	    if(!Faction_Still_Alive("Enemy")){//if all enemies were defeated
	        _script = "Default_Battle_Victory";
	    }
	}

	return _script;



}
