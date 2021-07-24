function Play_Death_Animation() {
	var _character = argument[0];


	if(_character.death_animation = "Beam"){
	    if(!audio_is_playing(sfx_Spell_Cast)){
	        Play_Sound(sfx_Spell_Cast);
	    }
	    Sprite_Animation(_character,spr_Magic_Beam_Overworld,1,.125,false,true);
	    _character.chained_animation = "Beam";
	}
	else{
	    Spin(_character,3);
	    _character.chained_animation = "Explode";
	}



}
