function Get_Current_Region() {
	//returns the highest region that the player is currently in

	var _highest_region = 0;

	with(obj_Character){
	    if(control_in_battle){//if the player can control this character
	        if(Get_AI_Region(x,y)>_highest_region){//if this region is higher than our current highest,
	            _highest_region = Get_AI_Region(x,y);
	        }
	    }
	}

	return _highest_region;



}
