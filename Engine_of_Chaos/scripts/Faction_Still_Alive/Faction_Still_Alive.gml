function Faction_Still_Alive() {
	var _faction = argument[0];

	with(obj_Character){//loop through all characters
	    if(faction = _faction){//if they are a member of the requested faction
	        return true;//then we still have a surviving character
	    }
	}

	return false;



}
