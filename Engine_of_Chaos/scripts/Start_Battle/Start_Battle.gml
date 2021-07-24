function Start_Battle() {
	var _battle_ID = argument[0];

	global.In_Battle = true;
	instance_create_layer(0,0,"UI_Instance_Layer",obj_Battle_Controller);
	obj_Battle_Controller.battle_ID = _battle_ID;
	Spawn_Battle_Party();
	Disable_Hidden_Units();
	Link_Teleport_Tiles();
	//Execute_Battle_Event('Start_New_Turn');



}
