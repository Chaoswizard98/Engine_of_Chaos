function Start_Room(_camera_target) {
	global.In_Battle = false;//Not in battle
	Set_Camera_View();//set camera view size
	Create_Camera(_camera_target);//create camera
	Create_Terrain_Controller();//create terrain controller
}