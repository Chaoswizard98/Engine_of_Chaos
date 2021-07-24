function Execute_Battle_Event() {
	var _event = argument[0];

	obj_Battle_Controller.event = _event;
	with(obj_Battle_Controller){
	    event_perform(ev_other,ev_user0);
	}



}
