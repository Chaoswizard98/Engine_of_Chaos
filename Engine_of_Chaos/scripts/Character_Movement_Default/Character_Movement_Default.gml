function Character_Movement_Default(_character){
	if(_character.call_cutscene){
	    with(obj_Cutscene_Controller){
	        event_perform(ev_other,ev_user0);
	    }
	}
	else{
	    _character.call_cutscene = true;
	}
}