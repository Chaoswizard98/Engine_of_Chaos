//==========
//Cross Fade
//==========
if(action = "Cross_Fade"){
    if(current_music != new_music){
        audio_sound_gain(current_music,0,fade_out_time);
        audio_play_sound(new_music,1000,true);
        audio_sound_gain(new_music,0,0);
        audio_sound_gain(new_music,global.Music_Volume,fade_in_time);
        state = "Fade_Out";
    }
}
//========
//Fade Out
//========
else if(action = "Fade_Out"){
    state = "Fade_Out";
    audio_sound_gain(current_music,0,fade_out_time);
}
//=======
//Fade In
//=======
else if(action = "Fade_In"){
    if(!audio_is_playing(new_music)){
        audio_stop_sound(current_music);
        audio_play_sound(new_music,1000,true);
        audio_sound_gain(new_music,0,0);
    }
    audio_sound_gain(new_music,global.Music_Volume,fade_in_time);
    current_music = new_music;
    new_music = noone;
}
else if(action = "Fade_To_Next"){
    if(current_music != new_music){
        state = "Fade_Out";
        audio_sound_gain(current_music,0,fade_out_time);
    }
}
//======
//Update
//======
else if(action = "Update_Volume"){
    audio_sound_gain(current_music,global.Music_Volume,0);
}

