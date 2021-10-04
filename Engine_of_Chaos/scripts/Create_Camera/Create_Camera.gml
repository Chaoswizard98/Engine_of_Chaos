function Create_Camera(_target){
	if(!instance_exists(obj_Camera)){
	    instance_create_layer(0,0,"Camera_Instance_Layer",obj_Camera);
	    if(_target = noone){
	        _target = obj_Camera;
	    }
	    obj_Camera.camera_target = _target;
	    obj_Camera.x_pos = max(min(_target.x+obj_Camera.x_offset - (Get_Camera_Width()/2),(room_width - Get_Camera_Width()-1)),0);
	    obj_Camera.y_pos = max(min(_target.y+obj_Camera.y_offset - (Get_Camera_Height()/2),(room_height - Get_Camera_Height()-1)),0);
    
		Set_Camera_X(obj_Camera.x_pos);
		Set_Camera_Y(obj_Camera.y_pos);
	}
	else{
	    if(_target = noone){
	        _target = obj_Camera;
	    }
	    obj_Camera.camera_target = _target;
	}
}