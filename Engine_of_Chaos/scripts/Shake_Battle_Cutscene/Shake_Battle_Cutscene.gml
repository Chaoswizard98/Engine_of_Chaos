function Shake_Battle_Cutscene() {
	//Screen Shaking
	with(obj_Battle_Cutscene_Controller){
	    shake_power_x = argument[0];//current shake power on the x axis
	    shake_power_y = argument[1];//current shake power on the y axis
	    shake_timer = argument[2];//length of screen shake (-1 for infinite)
	}



}
