function Faction_Still_Alive(_faction){
	with(obj_Character){//loop through all characters
	    if(faction = _faction){//if they are a member of the requested faction
	        return true;//then we still have a surviving character
	    }
	}
	return false;
}