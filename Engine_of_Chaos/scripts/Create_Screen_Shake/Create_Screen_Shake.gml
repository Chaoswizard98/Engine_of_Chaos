function Create_Screen_Shake(_power_x,_power_y,_timer,_call_cutscene) {
	//Screen Shaking
	with(obj_Camera){
	    shake_power_x = _power_x;//current shake power on the x axis
	    shake_power_y = _power_y;//current shake power on the y axis
	    shake_timer = _timer;//length of screen shake (-1 for infinite)
	    call_cutscene = _call_cutscene;//do we call the cutscene controller after shaking
	}
}