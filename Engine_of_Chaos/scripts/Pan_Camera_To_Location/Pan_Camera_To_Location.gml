function Pan_Camera_To_Location(_x,_y,_call_cutscene = obj_Camera.call_cutscene,_speed = obj_Camera.camera_speed,_x_border = obj_Camera.x_border,_y_border = obj_Camera.y_border){
	with(obj_Camera){
	    camera_pathfinding = true;
	    camera_target = id;
	    x = _x;
	    y = _y;
	    call_cutscene = _call_cutscene;
		camera_speed = _speed;
		x_border = _x_border;
		y_border = _y_border;  
	}
}