function Play_Music(_music,_transition,_fade_out_time,_fade_in_time) {
	with(obj_Audio_Controller){
	    new_music = _music;
	    action = _transition;
	    fade_out_time = _fade_out_time;
	    fade_in_time = _fade_in_time;
	    event_perform(ev_other,ev_user0);
	}
}