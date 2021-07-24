function Prism_Laser_Hit_Event() {
	var _object = argument[0];

	Play_Sound(sfx_Prism_Flower_Shot);
	instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Prism_Laser);



}
