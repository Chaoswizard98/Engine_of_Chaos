function Append_Dialogue() {
	//Basic dialogue controler creation script
	//It creates a dialogue controler and performs the following actions in order.
	//1. Pan in Portrait
	//2. Pan in Dialogue Window
	//3. Start Printing the given message.

	//Arguments
	var _portrait, _voice, _message, _object, _arrow, _auto_pan_out;

	_message = argument[0]; //What message are we printing out?
	_arrow = argument[1]; //Do we display the continue arrow, or not.
	_auto_pan_out = argument[2];//do we automatically pan out the dialogue or not?

	obj_Dialogue_Controller.message = Word_Wrap(obj_Dialogue_Controller.message + _message,obj_Dialogue_Controller.word_wrap_length,"#",false);
	obj_Dialogue_Controller.message_length = string_length(obj_Dialogue_Controller.message);
	obj_Dialogue_Controller.display_arrow = _arrow;//Do we display the continue arrow or not?
	obj_Dialogue_Controller.auto_pan_out = _auto_pan_out;
	obj_Dialogue_Controller.printing = true;
	obj_Dialogue_Controller.sound_delay = 0;
	obj_Dialogue_Controller.print_delay = 0;
	obj_Dialogue_Controller.allow_interaction = true;//reset input (in case it was previously blocked)

	if(argument_count > 3){
	    obj_Dialogue_Controller.end_message_delay = argument[3];//delay until panning out dialogue (so the text isnt instantly removed)
	}



}
