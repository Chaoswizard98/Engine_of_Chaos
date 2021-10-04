function Play_Sound(_sound) {
	//Play Sound at the set Volume
	audio_play_sound(_sound,10,false);
	audio_sound_gain(_sound,global.Sound_Volume,0);
}