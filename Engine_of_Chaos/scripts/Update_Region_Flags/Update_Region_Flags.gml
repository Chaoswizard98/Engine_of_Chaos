function Update_Region_Flags() {
	with(obj_Character){
	    if(control_in_battle){//if the player can control this character
	        obj_Battle_Controller.entered_region[Get_AI_Region(x,y)] = true;//we have entered this region
	    }
	}



}
