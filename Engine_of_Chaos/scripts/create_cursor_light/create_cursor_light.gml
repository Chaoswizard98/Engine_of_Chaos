function Create_Cursor_Light(_target,_radius = 45,_alpha = 1,_inner_color = c_white,_outer_color = c_black){
	//creates a light source bound to a character
	var _this;
	_this = instance_create_layer(0,0,"Lighting_Instance_Layer",obj_Cursor_Light);
	_this.target = _target;
	_this.radius = _radius;
	_this.alpha = _alpha;
	_this.inner_light_color = _inner_color;
	_this.outer_light_color = _outer_color;
}