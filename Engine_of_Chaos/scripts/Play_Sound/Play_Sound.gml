function Play_Sound() {
	//Play Sound at the set Volume
	//argument0: sound to play
	audio_play_sound(argument[0],10,false);
	audio_sound_gain(argument[0],global.Sound_Volume,0);



}
