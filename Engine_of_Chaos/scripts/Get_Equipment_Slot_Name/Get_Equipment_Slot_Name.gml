function Get_Equipment_Slot_Name(_slot) {
	//define equipment array indicies here
	switch(_slot){
	    case 0: return "Main_Hand"; break;//main hand
	    case 1: return "Off_Hand"; break;// off hand
    
	    default: return "Main_Hand"; break;//default
	}
}