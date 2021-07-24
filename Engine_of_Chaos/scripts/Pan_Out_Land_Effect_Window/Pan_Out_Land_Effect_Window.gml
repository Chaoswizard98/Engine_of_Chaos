function Pan_Out_Land_Effect_Window() {
	//var _object = argument[0];
	var _action = argument[0];

	with(obj_Land_Effect_Window){
	    window_pan_direction = "out";
	    play_pan_sound = true;
	    action = _action;
	}



}
