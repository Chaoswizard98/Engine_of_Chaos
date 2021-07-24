function Chained_Animation() {
	var _character = argument[0];


	if(_character.chained_animation = "Explode"){
	    _character.chained_animation = "none";
	    if(!audio_is_playing(sfx_Boom)){
	        Play_Sound(sfx_Boom);
	    }
	    Sprite_Animation(_character,spr_Explode_Overworld,1,.125,true,true);
	}
	else if(_character.chained_animation = "Beam"){
	    Reset_Sprite_Animation(_character);
	    if(!audio_is_playing(sfx_Blaze_Fire_Start)){
	        Play_Sound(sfx_Blaze_Fire_Start);
	    }
	    _character.chained_animation = "none";
	    Sprite_Animation(_character,spr_Magic_Beam_Fade_Overworld,1,.25,true,true);
	}



}
