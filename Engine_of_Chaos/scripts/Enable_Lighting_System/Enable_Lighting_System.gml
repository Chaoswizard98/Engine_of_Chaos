function Enable_Lighting_System(_alpha,_color = c_white){
	instance_create_layer(0,0,"Lighting_Instance_Layer",obj_Lighting_Controller);
	with(obj_Lighting_Controller){
	    light_background_alpha = _alpha;//alpha of background
	    light_background_color = _color;//alpha of colored light layer
	    light_background_color = make_colour_hsv(colour_get_hue(_color),colour_get_saturation(_color),(colour_get_value(_color)*light_background_alpha));
	}
}