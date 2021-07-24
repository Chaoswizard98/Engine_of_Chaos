function Play_Music() {
	var _music = argument[0];
	var _transition = argument[1];
	var _fade_out_time = argument[2];
	var _fade_in_time = argument[3];


	with(obj_Audio_Controller){
	    new_music = _music;
	    action = _transition;
	    fade_out_time = _fade_out_time;
	    fade_in_time = _fade_in_time;
	    event_perform(ev_other,ev_user0);
	}



}
