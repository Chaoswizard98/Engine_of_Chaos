/*function Enemy_Unit_Still_Alive(_faction){
	with(obj_Character){//loop through all characters
	    if(Get_Faction_Stats(_faction,"Relation",faction) = "Enemy"){//if character is enemy of faction
	        return true;
	    }
	}
	return false;
}