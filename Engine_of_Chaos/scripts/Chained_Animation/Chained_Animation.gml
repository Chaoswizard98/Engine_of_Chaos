function Chained_Animation(_character){
	if(_character.chained_animation = "Explode"){
	    _character.chained_animation = "none";
	    if(!audio_is_playing(sfx_Boom)){
	        Play_Sound(sfx_Boom);
	    }
	    Sprite_Animation(_character,spr_Explode_Overworld,1,.125,true,true);
		if(instance_exists(obj_Lighting_Controller)){
			var _light = Create_Character_Light(_character,180,1,c_white,c_black);
			_light.alarm[0] = 10;
		}
	}
	else if(_character.chained_animation = "Beam"){
	    Reset_Sprite_Animation(_character);
	    if(!audio_is_playing(sfx_Blaze_Fire_Start)){
	        Play_Sound(sfx_Blaze_Fire_Start);
	    }
	    _character.chained_animation = "none";
	    Sprite_Animation(_character,spr_Magic_Beam_Fade_Overworld,1,.25,true,true);
	}
	else if(_character.chained_animation = "Explode_Wisp"){
	    _character.chained_animation = "none";
	    if(!audio_is_playing(sfx_Bolt_Hit)){
	        Play_Sound(sfx_Bolt_Hit);
	    }
	    Sprite_Animation(_character,spr_Explode_Blue_Overworld,1,.125,true,true);
		with(obj_Character_Light){
			if(target = _character){
				inner_light_color = c_white;
				outer_light_color = c_black;
				radius = 180;
				alarm[0] = 5;//destroy in 10 steps
			}
		}
	}
}