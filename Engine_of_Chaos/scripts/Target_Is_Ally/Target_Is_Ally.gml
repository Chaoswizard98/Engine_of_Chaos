function Target_Is_Ally(_character,_target){
	if(Get_Faction_Stats(_character.faction,"Relation",_target.faction) = "Ally"){
	    return true;
	}
	return false;
}