function Create_Church_Controller(_lookup_type,_script_ID,_player,_npc,_object,_dialogue_ID) {
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Church_Controller);
	_this.lookup_type = _lookup_type;
	_this.script_ID = _script_ID;//set action
	_this.current_player = _player;//player trigger
	_this.current_npc = _npc;//npc trigger
	_this.current_object = _object;//current object (usually cutscene controller)
	_this.dialogue_ID = _dialogue_ID;//what dialogue script to use

	with(_this){
	    event_perform(ev_other,ev_user0);
	}
}