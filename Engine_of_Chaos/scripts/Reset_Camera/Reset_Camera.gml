function Reset_Camera() {
	with(obj_Camera){
	    camera_target = argument[0];//object we're following
	    camera_speed = 1;//How fast does the camera follow the target (in pixels); -1 will always keep it on the target.
	    x_border = 144;//Target stays at least 48 pixels from the edge of the camera
	    y_border = 96;
	    x = 0;
	    y = 0;
	}



}
