function Create_Character_Light() {
	//creates a light source bound to a character
	var _this;
	_this = instance_create_layer(0,0,"Lighting_Instance_Layer",obj_Character_Light);
	_this.target = argument[0];

	if(argument_count > 1){
	    _this.radius = argument[1];
	}
	if(argument_count > 2){
	    _this.alpha = argument[2];
	}
	if(argument_count > 3){
	    _this.inner_light_color = argument[3];
	}
	if(argument_count > 4){
	    _this.outer_light_color = argument[4];
	}



}
