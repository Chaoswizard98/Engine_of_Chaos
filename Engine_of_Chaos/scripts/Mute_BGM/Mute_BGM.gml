function Mute_BGM() {
	//Mutes the background music (But it will continue to play until stopped)
	with(obj_Audio_Controller){
	    audio_sound_gain(current_music,0,0);
	}



}
