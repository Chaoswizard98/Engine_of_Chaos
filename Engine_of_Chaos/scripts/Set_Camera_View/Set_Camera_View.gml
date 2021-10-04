function Set_Camera_View() {
	//Sets the camera's view settings so we dont need to update it for every room
	view_enabled = true;
	view_set_visible(view_camera[0],true);

	camera_set_view_size(view_camera[0],global.View_Width,global.View_Height);

	view_wport[0] = global.View_Width;
	view_wport[0] = global.View_Height;

}