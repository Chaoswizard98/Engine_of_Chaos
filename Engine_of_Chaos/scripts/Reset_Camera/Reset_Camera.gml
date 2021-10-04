function Reset_Camera(_target) {
	with(obj_Camera){
	    camera_target = _target;//object we're following
	    camera_speed = 1;//How fast does the camera follow the target (in pixels); -1 will always keep it on the target.
	    x_border = 144;//Target stays at least 48 pixels from the edge of the camera
	    y_border = 96;
	    x = 0;
	    y = 0;
	}
}