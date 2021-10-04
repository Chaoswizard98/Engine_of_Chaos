function UI_Cancel_Event(_object,_event,_event_trigger){
	_object.parent_event = _event;
	_object.parent_event_trigger = _event_trigger;
	with(_object){
	    event_perform(ev_other,ev_user13);
	}
}