function Get_Anchor_Y(_anchor_point) {
	//===============================================================
	//calculates and returns the y anchor point given screen location
	//===============================================================
	switch(_anchor_point){
	    case "Top_Left": return Get_Camera_Y() + 0; break;
	    case "Middle_Left": return Get_Camera_Y() + round(Get_Camera_Height() /2); break;
	    case "Bottom_Left": return Get_Camera_Y() + Get_Camera_Height() -1; break;
    
	    case "Top_Middle": return Get_Camera_Y() + 0; break;
	    case "Middle": return Get_Camera_Y() + 0 + round(Get_Camera_Height() /2); break;
	    case "Bottom_Middle": return Get_Camera_Y() + 0 + Get_Camera_Height(); break;
    
	    case "Top_Right": return Get_Camera_Y() + 0; break;
	    case "Middle_Right": return Get_Camera_Y() + 0 + round(Get_Camera_Height() /2); break;
	    case "Bottom_Right": return Get_Camera_Y() + 0 + Get_Camera_Height(); break;
    
	    default: return 0; break;//default 'no anchor' returns origin
	}
}