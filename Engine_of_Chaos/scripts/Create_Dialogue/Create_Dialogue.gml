function Create_Dialogue() {
	//Basic dialogue controler creation script
	//It creates a dialogue controler and performs the following actions in order.
	//1. Pan in Portrait
	//2. Pan in Dialogue Window
	//3. Start Printing the given message.

	//Arguments
	var _portrait, _voice, _message, _object, _arrow, _auto_pan_out;

	_portrait = argument[0];//What portrait do we display? (none for no portrait)
	_voice = argument[1];//what sound do we play as the voice?
	_message = argument[2]; //What message are we printing out?
	_object = argument[3]; //What object summoned the dialogue controler
	_arrow = argument[4]; //Do we display the continue arrow, or not.
	_auto_pan_out = argument[5];//do we automatically pan out the dialogue or not?

	var _this = instance_create_layer(0,0,"Dialogue_Instance_Layer",obj_Dialogue_Controller);//Create the Dialogue Controler
	_this.message = Word_Wrap(_message,_this.word_wrap_length,"#",false);
	_this.message_length = string_length(_this.message); 
	_this.current_object = _object;//Self is a reference to whatever object called this script. 
	_this.voice = _voice;
	_this.display_arrow = _arrow;//Do we display the continue arrow or not?
	_this.auto_pan_out = _auto_pan_out;

	if(argument_count > 6){
	    _this.end_message_delay = argument[6];//delay until panning out dialogue (so the text isnt instantly removed)
	}
	if(argument_count > 7){
	    _this.force_end = argument[7];//delay until panning out dialogue (so the text isnt instantly removed)
	}

	if(_portrait = noone){//if we arent displaying a portrait, skip the pan and start panning up the dialogue window.
	    _this.pan_direction = "in";
	}
	else{//We have a portrait to pan in so we pan that in first, then the dialogue window.
	    _this.portrait_controller = Create_Portrait_Controller(_portrait,"Dialogue",_this);
	    _this.portrait_controller.play_pan_sound = true;
	}
}