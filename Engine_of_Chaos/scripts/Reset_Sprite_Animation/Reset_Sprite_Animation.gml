function Reset_Sprite_Animation(_character){
	with(_character){
	    animation = "none";
	    animation_count = 0;
	    animation_offset_x = 0;
	    animation_offset_y = 0;
	    animation_direction = "none";
	    animation_timer = 0;
	    image_speed = idle_animation_speed;
	}
}