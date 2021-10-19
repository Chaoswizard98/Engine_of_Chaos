function Create_Spell_Controller(_state,_effect,_effect_level,_position){
	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Spell_Controller);

	_this.state = _state;
	_this.effect = _effect;
	_this.effect_level = _effect_level;
	_this.position = _position;

	with(_this){
	    event_perform(ev_other,ev_user0);
	}
}