function Start_Cutscene(_cutscene_ID,_player_trigger = noone, _other_trigger = noone){
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cutscene_Controller);
	Update_Cutscene(_this,_cutscene_ID,_player_trigger,_other_trigger);
}