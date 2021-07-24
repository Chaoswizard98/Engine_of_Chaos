function Restart_Music() {
	with(obj_Audio_Controller){
	    audio_stop_sound(current_music);
	    audio_play_sound(current_music,1000,true);
	    action = "Update_Volume";
	    event_perform(ev_other,ev_user0);
	}



}
