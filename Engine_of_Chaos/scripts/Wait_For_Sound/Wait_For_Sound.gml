function Wait_For_Sound(_sound,_object) {
	with(obj_Audio_Controller){
	    sound_to_play = _sound;
	    current_object = _object;
	    Play_Sound(_sound);//play the sound
	    Mute_BGM();//mute the background music
	    playing_sound = true;
	}
}