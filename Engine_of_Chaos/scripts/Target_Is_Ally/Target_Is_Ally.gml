function Target_Is_Ally() {
	var _character = argument[0];
	var _target = argument[1];

	if(Get_Faction_Stats(_character.faction,"Relation",_target.faction) = "Ally"){
	    return true;
	}

	return false;



}
