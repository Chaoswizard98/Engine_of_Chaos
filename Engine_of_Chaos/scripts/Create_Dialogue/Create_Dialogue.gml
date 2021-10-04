function Create_Dialogue(_portrait,_voice,_message,_object,_arrow,_auto_pan,_delay = 5,_force_end = false) {
	var _this = instance_create_layer(0,0,"Dialogue_Instance_Layer",obj_Dialogue_Controller);//Create the Dialogue Controler
	_this.message = Word_Wrap(_message,_this.word_wrap_length,"#",false);
	_this.message_length = string_length(_this.message); 
	_this.current_object = _object;//Self is a reference to whatever object called this script. 
	_this.voice = _voice;
	_this.display_arrow = _arrow;//Do we display the continue arrow or not?
	_this.auto_pan_out = _auto_pan;
	_this.end_message_delay = _delay;//delay until panning out dialogue (so the text isnt instantly removed)
	_this.force_end = _force_end;//delay until panning out dialogue (so the text isnt instantly removed)

	if(_portrait = noone){//if we arent displaying a portrait, skip the pan and start panning up the dialogue window.
	    _this.pan_direction = "in";
	}
	else{//We have a portrait to pan in so we pan that in first, then the dialogue window.
	    _this.portrait_controller = Create_Portrait_Controller(_portrait,"Dialogue",_this);
	    _this.portrait_controller.play_pan_sound = true;
	}
}