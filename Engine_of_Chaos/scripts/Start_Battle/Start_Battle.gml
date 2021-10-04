function Start_Battle(_battle_ID,_egress_room,_force_start = true,_background_set = "Default", _xp_modifier = 1){
	Start_Room(obj_Cursor);
	global.In_Battle = true;
	global.Egress_Room = _egress_room;
	global.Battle_Cutscene_Terrain = _background_set;
	global.Xp_Modifier = _xp_modifier;

	instance_create_layer(0,0,"UI_Instance_Layer",obj_Battle_Controller);
	obj_Battle_Controller.battle_ID = _battle_ID;
	Spawn_Battle_Party();
	Disable_Hidden_Units();
	Link_Teleport_Tiles();
	
	if(_force_start){//If we run the battle right away
		Finish_Room_Transition(obj_Battle_Controller);//Finish room transition and run battle
	}
}