function Pan_Camera_To_Target(_target,_speed = obj_Camera.camera_speed,_x_border = obj_Camera.x_border,_y_border = obj_Camera.y_border){
	with(obj_Camera){
	    camera_pathfinding = true;
	    camera_target = _target;
	    camera_speed = _speed;
	    x_border = _x_border;
	    y_border = _y_border;
	}
}