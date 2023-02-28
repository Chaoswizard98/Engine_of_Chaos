function Create_Battle_Cutscene_Prop(_prop,_x_pos,_y_pos,_rotation,_mirror,_loop_animation,_call_event,_start_sound){
	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Battle_Cutscene_Prop);

	_this.x_pos = _x_pos;
	_this.y_pos = _y_pos;
	_this.prop = _prop;
	_this.rotation = _rotation;
	_this.mirror = _mirror;
	_this.loop_animation = _loop_animation;
	_this.call_event = _call_event;
	with(_this){
	    sprite_index = Get_Battle_Cutscene_Prop_Stats(prop,"Sprite");
	    image_speed = Get_Battle_Cutscene_Prop_Stats(prop,"Animation_Speed");
		draw_location = Get_Battle_Cutscene_Prop_Stats(prop,"Draw_Location");
		instant_destruction = Get_Battle_Cutscene_Prop_Stats(prop,"Instant_Destruction");
		start_sound = _start_sound;
	}

	//Play start sound if we have one
	//if(_start_sound != noone){
	//    Play_Sound(_start_sound);
	//}

	return _this;
}