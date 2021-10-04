function Stop_Screen_Shake() {
	with(obj_Camera){
	    shake_x = 0;//current x offset due to screen shaking
	    shake_y = 0;//current y offset due to screen shaking
	    shake_power_x = 0;//current shake power on the x axis
	    shake_power_y = 0;//current shake power on the y axis
	    shake_timer = 0;//time left during screen shake
	    call_cutscene = false;//do we call the cutscene controller after shaking?
	}
}