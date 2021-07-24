function Grant_Gold() {
	var _character = argument[0];
	var _target = argument[1];

	var _object = Get_Battle_Cutscene_Character(_character);

	if(_character.can_recieve_gold){//if they can recieve gold,
	    _object.gold_earned += _target.gold_value;//grant gold
	}



}
