function Enable_Lighting_System() {
	instance_create_layer(0,0,"Lighting_Instance_Layer",obj_Lighting_Controller);
	with(obj_Lighting_Controller){
	    if(argument_count > 0){
	       light_background_alpha = argument[0];//alpha of background
	       light_background_color = c_white;//color of background
	    }
	    if(argument_count > 1){
	        light_background_color = argument[1];//alpha of colored light layer
	    }
    
	    light_background_color = make_colour_hsv(colour_get_hue(light_background_color),colour_get_saturation(light_background_color),(colour_get_value(light_background_color)*light_background_alpha));
	}



}
