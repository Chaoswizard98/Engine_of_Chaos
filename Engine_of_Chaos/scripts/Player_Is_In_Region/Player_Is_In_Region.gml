function Player_Is_In_Region(_region) {
	//Checks if the player is in a specific region
	with(obj_Character){
	    if(control_in_battle){//if the player can control this character
	        if(Get_AI_Region(x,y) = _region){//if this character is in the region
	            return true;
	        }
	    }
	}
	return false;
}