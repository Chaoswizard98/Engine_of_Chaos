if((image_index >= 1) && (previous_frame < 1)){
	Play_Sound(sfx_Score);
	previous_frame = 1;
}

if((image_index >= 13) && (previous_frame < 13)){
	Play_Sound(sfx_Zoom_In);
	display_text = true;
	fade_direction = "In";
	previous_frame = 13;
}


if((image_index >= 50) && (previous_frame < 50)){
	Play_Sound(sfx_Close);
	audio_stop_sound(sfx_Zoom_In);
	Create_Screen_Fade(c_black,0,8,.125,"out",id);
	previous_frame = 50;
}



if(fade_direction = "In"){
	fade += fade_speed;
	if(fade >= 1){
		fade_direction = "none";	
	}
}