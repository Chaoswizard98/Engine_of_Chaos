function Reset_Sprite_Animation() {
	with(argument[0]){
	    animation = "none";
	    animation_count = 0;
	    animation_offset_x = 0;
	    animation_offset_y = 0;
	    animation_direction = "none";
	    animation_timer = 0;
	    image_speed = idle_animation_speed;
	}



}
