function Create_Land_Effect_Window() {
	var _object = argument[0];
	var _character = argument[1];
	var _action = argument[2];
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Land_Effect_Window);

	_this.current_object = _object;
	_this.current_character = _character;
	_this.window_pan_direction = "in";
	_this.play_pan_sound = true;
	_this.display = true;
	_this.window_pan = -(_this.max_pan);
	_this.action = _action;



}
