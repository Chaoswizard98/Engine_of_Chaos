function Get_Anchor_X() {
	//===============================================================
	//calculates and returns the x anchor point given screen location
	//===============================================================
	var _anchor_point;
	_anchor_point = argument[0];

	switch(_anchor_point){
	    case "Top_Left": return Get_Camera_X() + 0; break;
	    case "Middle_Left": return Get_Camera_X() + 0; break;
	    case "Bottom_Left": return Get_Camera_X() + 0; break;
    
	    case "Top_Middle": return Get_Camera_X() + round(Get_Camera_Width()/2); break;
	    case "Middle": return Get_Camera_X() + round(Get_Camera_Width()/2); break;
	    case "Bottom_Middle": return Get_Camera_X() + round(Get_Camera_Width()/2); break;
    
	    case "Top_Right": return Get_Camera_X() + round(Get_Camera_Width()); break;
	    case "Middle_Right": return Get_Camera_X() + round(Get_Camera_Width()); break;
	    case "Bottom_Right": return Get_Camera_X() + round(Get_Camera_Width()); break;
	
	    default: return 0; break;//default 'no anchor' returns origin
	}

}