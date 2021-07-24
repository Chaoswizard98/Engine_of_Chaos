function Get_Lookup_Type() {
	//gives us the proper variable lookup type
	//do we use local or global variables?
	var _faction = argument[0];

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
