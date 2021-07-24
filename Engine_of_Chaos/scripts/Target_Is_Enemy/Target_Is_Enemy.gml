function Target_Is_Enemy() {
	var _character = argument[0];
	var _target = argument[1];
	var _formula = "Character";
	var _faction = "none";

	if(argument_count > 2){
	    _formula = argument[2];    
	}

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
