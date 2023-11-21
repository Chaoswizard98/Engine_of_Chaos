function Get_Enemies_Remaining(_faction){
	var _count = 0;
	with(obj_Character){//loop through all characters
	    if((Get_Faction_Stats(_faction,"Relation",faction) = "Enemy") && (!hidden)){//if character is enemy of faction
	        _count += 1;
	    }
	}
	return _count;
}