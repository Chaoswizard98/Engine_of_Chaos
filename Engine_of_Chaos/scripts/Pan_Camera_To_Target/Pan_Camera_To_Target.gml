function Pan_Camera_To_Target() {
	with(obj_Camera){
	    camera_pathfinding = true;
	    camera_target = argument[0];
	    if(argument_count > 1){
	        camera_speed = argument[1];
	    }
	    if(argument_count > 2){
	        x_border = argument[2];
	    }
	    if(argument_count > 3){
	        y_border = argument[3];
	    }
	}



}
