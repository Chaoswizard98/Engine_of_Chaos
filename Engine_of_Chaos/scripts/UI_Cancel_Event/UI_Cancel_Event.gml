function UI_Cancel_Event() {
	var _object = argument[0];
	var _event = argument[1];
	var _event_trigger = argument[2];

	_object.parent_event = _event;
	_object.parent_event_trigger = _event_trigger;

	with(_object){
	    event_perform(ev_other,ev_user13);
	}



}
