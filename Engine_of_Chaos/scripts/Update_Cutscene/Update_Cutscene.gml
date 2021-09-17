function Update_Cutscene(_controller,_cutscene_ID,_player_trigger = noone, _other_trigger = noone){
	
	_controller.script_ID = _cutscene_ID;//script we're calling
	_controller.player_trigger = _player_trigger;//Player who triggered the cutscene
	_controller.other_trigger = _other_trigger;//NPC or object who triggered the cutscene
	_controller.state = 0;

	with(_controller){//run the cutscene
	    event_perform(ev_other,ev_user0);
	}
}