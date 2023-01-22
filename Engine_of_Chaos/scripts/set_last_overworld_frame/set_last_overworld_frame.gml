function Set_Last_Overworld_Frame(_character){
	with(_character){
		if(direction = 270){//Down
			image_index = number_of_frames -1;
		}
		else if(direction = 90){//up
			image_index = (number_of_frames * 2) -1;
		}
		else if((direction = 0)||(direction = 45)||(direction = 315)){//right
			image_index = (number_of_frames * 3) -1;
		}
		else if((direction = 180)||(direction = 135)||(direction = 225)){//left
			if(sprite_get_number(sprite_index)<(number_of_frames * 4)){//if we need to mirror the right frames
				mirror = -1;
				image_index = (number_of_frames * 3) -1;
			}
			else{
				image_index = (number_of_frames * 4) -1;
			}
		}
	}
}