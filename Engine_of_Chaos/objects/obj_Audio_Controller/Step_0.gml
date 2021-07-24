//===================================
//Waiting for sound to finish playing
//===================================
if(playing_sound){//if we are playing a sound
    if(!audio_is_playing(sound_to_play)){//check if that sound stopped playing
        playing_sound = false;
        Restart_Music();
        UI_Cancel_Event(current_object,"End_Audio_Delay","none");
    }
}
//============
//Music Fading
//============
else if(state = "Fade_Out"){
    if(audio_sound_get_gain(current_music) <= 0){//if track is fully faded out
        audio_stop_sound(current_music);//stop playing music
        current_music = new_music;
        state = "none";
        if(action = "Fade_To_Next"){
            action = "Fade_In";
            event_perform(ev_other,ev_user0);
        }
        else{
            new_music = noone;
        }
    }
}

