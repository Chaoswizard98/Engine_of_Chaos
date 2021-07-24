function Check_Stat_Override() {
	//returns the ID of the stat based on if we have an override or not
	for(i = argument_count-1; i >= 0; i -= 1){
	    if(argument[i] != "none"){
	        return argument[i];
	    }
	}
	return argument[0];



}
