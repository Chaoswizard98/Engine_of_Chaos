current_object = noone;//For waiting for a specific sound to finish playing
sound_to_play = noone;//Sound we're waiting for
playing_sound = false;//Are we waiting for a sound?

current_music = noone;//Current BGM
new_music = noone;//New track to play
state = "none";//State of music transition
fade_out_time = 0;//fade out timer
fade_in_time = 0;//fade in timer
action = "none";//Fade transition type

