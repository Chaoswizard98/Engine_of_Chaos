function Start_Room() {
	var _camera_target = argument[0];

	//Default to no adjacent rooms
	Set_Adjacent_Room("Up",noone,"Egress");
	Set_Adjacent_Room("Down",noone,"Egress");
	Set_Adjacent_Room("Left",noone,"Egress");
	Set_Adjacent_Room("Right",noone,"Egress");

	global.In_Battle = false;//Not in battle
	Set_Camera_View();//set camera view size
	Create_Camera(_camera_target);//create camera
	Create_Terrain_Controller();//create terrain controller



}
