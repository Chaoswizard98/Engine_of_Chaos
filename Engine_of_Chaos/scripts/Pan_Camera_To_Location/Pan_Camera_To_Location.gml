function Pan_Camera_To_Location() {
	var _camera;
	_camera = obj_Camera;

	with(_camera){
	    camera_pathfinding = true;
	    camera_target = id;
	    x = argument[0];
	    y = argument[1];
    
	    if(argument_count > 2){
	        call_cutscene = argument[2];
	    }
	    if(argument_count > 3){
	        camera_speed = argument[3];
	    }
	    if(argument_count > 4){
	        x_border = argument[4];
	    }
	    if(argument_count > 5){
	        y_border = argument[5];
	    }
	}



}
