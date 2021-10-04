function Target_Is_Enemy(_character,_target,_formula = "Character") {
	var _faction = "none";

	if(_formula = "Character"){
	    _faction = _character.faction;
	}
	else if(_formula = "Faction"){
	    _faction = _character;
	}

	if(Get_Faction_Stats(_faction,"Relation",_target.faction) = "Enemy"){
	    return true;
	}

	return false;
}