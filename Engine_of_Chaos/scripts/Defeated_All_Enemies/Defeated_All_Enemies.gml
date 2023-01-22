function Defeated_All_Enemies(_faction){
	with(obj_Character){//loop through all characters
	    if((Get_Faction_Stats(_faction,"Relation",faction) = "Enemy") && (!hidden)){//if character is enemy of faction
	        return false;//Enemy still alive
	    }
	}
	return true;
}