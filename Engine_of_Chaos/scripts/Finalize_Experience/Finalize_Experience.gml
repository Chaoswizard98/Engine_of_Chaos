function Finalize_Experience() {
	var _character = argument[0];

	var _reduction = 0;
	if(_character.reduce_xp){
	    _reduction = irandom_range(0,2);
	}

	_character.experience_gained = min(_character.experience_gained,_character.highest_z_value);//if xp is more than highest z, set to highest z
	_character.experience_gained = max(_character.experience_gained - _reduction,1);//reduce xp slightly, min xp 1



}
