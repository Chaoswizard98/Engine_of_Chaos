function Create_Battle_HUD() {
	var _object = argument[0];
	var _character = argument[1];
	var _action = argument[2];
	var _display_type = argument[3];
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Battle_HUD);

	_this.current_object = _object;
	_this.current_character = _character;
	with(_this){//Calculate max pan and window size
	    event_perform(ev_other,ev_user1);
	}
	_this.window_pan_direction = "in";
	_this.play_pan_sound = true;
	_this.display = true;
	_this.display_type = _display_type;
	_this.window_pan = _this.max_pan;
	_this.action = _action;



}
