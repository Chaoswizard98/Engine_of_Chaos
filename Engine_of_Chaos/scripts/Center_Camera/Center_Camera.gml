function Center_Camera() {
	obj_Camera.x_pos = max(min(obj_Camera.camera_target.x+obj_Camera.x_offset - (Get_Camera_Width()/2),(room_width - Get_Camera_Width()-1)),0);
	obj_Camera.y_pos = max(min(obj_Camera.camera_target.y+obj_Camera.y_offset - (Get_Camera_Height()/2),(room_height - Get_Camera_Height()-1)),0);
}