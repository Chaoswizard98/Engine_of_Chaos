function Create_Party_Management_Controller() {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Party_Management_Controller);

	_this.lookup_type = argument[0];
	_this.player = argument[1];
	_this.npc = argument[2];
	_this.action = argument[3];
	_this.current_object = argument[4];

	with(_this){
	    event_perform(ev_other,ev_user0);
	}



}
