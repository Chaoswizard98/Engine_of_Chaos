function Set_Hidden_Character() {
	var _character = argument[0];
	var _criteria = argument[1];
	var _state = argument[2];
	var _exact_state = argument[3];
	var _attack = argument[4];
	var _action = argument[5];


	_character.hidden = true;
	_character.reveal_criteria = _criteria;//criteria for reveal
	_character.reveal_state = _state;//what battle state do they reveal on?
	_character.reveal_requires_exact_region = _exact_state;//Does the player have to be in this exact region?
	_character.reveal_action = _action;//do they get a turn when revealing? Or wait until next round?
	_character.attack_on_reveal = _attack;//do they get a free attack when revealing?

	if(argument_count > 6){//if we provided the optional argument
	    _character.reveal_cutscene_ID = argument[6];//set cutscene script ID
	}



}
