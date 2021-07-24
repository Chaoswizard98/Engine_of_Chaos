function Wait_For_Sound() {
	with(obj_Audio_Controller){
	    sound_to_play = argument[0];
	    current_object = argument[1];
	    Play_Sound(argument[0]);//play the sound
	    Mute_BGM();//mute the background music
	    playing_sound = true;
	}



}
