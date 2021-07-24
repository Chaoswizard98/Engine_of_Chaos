function Create_Spell_Controller() {
	var _state = argument[0];
	var _effect = argument[1];
	var _effect_level = argument[2];
	var _position = argument[3];
	var _prop_event_type = "Default";

	if(argument_count > 4){
	    _prop_event_type = argument[4];
	}


	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Spell_Controller);

	_this.state = _state;
	_this.effect = _effect;
	_this.effect_level = _effect_level;
	_this.position = _position;
	_this.prop_event_type = _prop_event_type;

	with(_this){
	    event_perform(ev_other,ev_user0);
	}



}
