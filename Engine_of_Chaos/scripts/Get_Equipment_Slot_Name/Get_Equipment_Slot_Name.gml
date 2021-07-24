function Get_Equipment_Slot_Name() {
	//define equipment array indicies here

	switch(argument[0]){
	    case 0: return "Main_Hand"; break;//main hand
	    case 1: return "Off_Hand"; break;// off hand
    
	    default: return "Main_Hand"; break;//default
	}



}
