function Get_Lookup_Type(_faction) {
	if(global.In_Battle){//if we are in battle,
	    return "Local";
	}
	else{
	    if(!Faction_Is_Empty("Global",_faction)){
	        return "Global";
	    }
	    else{
	        return "Local";
	    }
	}
}