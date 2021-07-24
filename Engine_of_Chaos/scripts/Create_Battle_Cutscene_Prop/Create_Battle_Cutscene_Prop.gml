function Create_Battle_Cutscene_Prop() {
	/*
	prop
	x
	y
	start sound
	*/

	var _prop = argument[0];
	var _x_pos = argument[1];
	var _y_pos = argument[2];
	var _rotation = argument[3];
	var _mirror = argument[4];
	var _loop_animation = argument[5];
	var _call_event = argument[6];
	var _start_sound = argument[7];
	var _this;

	switch(_prop){
	    default:
	        _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Battle_Cutscene_Prop);
	    break;
	}

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
	    flash_color = Get_Battle_Cutscene_Prop_Stats(prop,"Flash_Color");
	}

	//Play start sound if we have one
	if(_start_sound != noone){
	    Play_Sound(_start_sound);
	}

	return _this;



}
