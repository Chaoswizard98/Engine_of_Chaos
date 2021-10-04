function Create_Party_Management_Controller(_lookup_type,_player,_npc,_action,_object) {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Party_Management_Controller);

	_this.lookup_type = _lookup_type;
	_this.player = _player;
	_this.npc = _npc;
	_this.action = _action;
	_this.current_object = _object;

	with(_this){
	    event_perform(ev_other,ev_user0);
	}
}