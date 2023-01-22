if(Chance(.1)||(!audio_is_playing(sfx_Hit)&&!audio_is_playing(sfx_Hit_2))){
	switch(irandom_range(1,2)){
		case 1: Play_Sound(sfx_Hit); break;
		case 2: Play_Sound(sfx_Hit_2); break;
	}
}