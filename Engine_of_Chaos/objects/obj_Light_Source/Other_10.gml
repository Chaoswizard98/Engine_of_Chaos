if(!instance_exists(target)){
	instance_destroy();
}
else{
	gpu_set_blendmode(bm_add);
	draw_set_alpha(alpha);//set outer alpha
	if(light_sprite != noone){//if we have a sprite, draw it
	    draw_sprite_ext(light_sprite,0,x,y,scale,scale,0,sprite_light_color,1);
	}
	else {
	    draw_circle_colour(target.x+x_offset,target.y+y_offset,radius,inner_light_color,outer_light_color,false);//subtract outer radius
	}
	draw_set_alpha(1);//set outer alpha
	gpu_set_blendmode(bm_normal);
}