function Start_New_Dialogue(_message,_arrow,_auto_pan,_delay = obj_Dialogue_Controller.end_message_delay) {
	obj_Dialogue_Controller.message = Word_Wrap(_message,obj_Dialogue_Controller.word_wrap_length,"\n",false);
	obj_Dialogue_Controller.message_length = string_length(obj_Dialogue_Controller.message);
	obj_Dialogue_Controller.display_arrow = _arrow;//Do we display the continue arrow or not?
	obj_Dialogue_Controller.auto_pan_out = _auto_pan;
	obj_Dialogue_Controller.characters = 0;
	obj_Dialogue_Controller.line_number = 1;
	obj_Dialogue_Controller.message_draw = "";
	obj_Dialogue_Controller.printing = true;
	obj_Dialogue_Controller.sound_delay = 0;
	obj_Dialogue_Controller.print_delay = 0;
	obj_Dialogue_Controller.allow_interaction = true;//reset input (in case it was previously blocked)
	obj_Dialogue_Controller.end_message_delay = _delay;//delay until panning out dialogue (so the text isnt instantly removed)
}