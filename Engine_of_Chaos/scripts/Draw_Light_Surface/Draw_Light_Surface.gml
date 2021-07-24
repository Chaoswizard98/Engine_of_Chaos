function Draw_Light_Surface() {
	//=================
	//Draw Light Layer=
	//=================
	var _surface = argument[0];

	surface_set_target(_surface);//set draw target to light surface
	draw_clear_alpha(light_background_color,1);//set BG to target color
	with(obj_Light_Source){//with all light objects
	    if(enabled){//if the light is enabled
	        event_perform(ev_other,ev_user0);
	    }
	}
	surface_reset_target();//reset draw target to main
	gpu_set_blendmode_ext(bm_dest_color, bm_zero);
	draw_surface_ext(_surface,0,0,1,1,0,c_white,1);//draw this surface to the screen
	gpu_set_blendmode(bm_normal);



}
