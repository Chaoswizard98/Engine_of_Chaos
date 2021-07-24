function Create_Church_Controller() {
	//shop type
	//player
	//npc
	//current object

	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Church_Controller);
	_this.lookup_type = argument[0];
	_this.script_ID = argument[1];//set action
	_this.current_player = argument[2];//player trigger
	_this.current_npc = argument[3];//npc trigger
	_this.current_object = argument[4];//current object (usually cutscene controller)
	_this.dialogue_ID = argument[5];//what dialogue script to use

	//_this.dialogue_ID = _this.current_npc.shop_dialogue_ID[argument[0]];//set dialogue ID
	_this.voice_ID = _this.current_npc.voice_ID;//set voice of the npc

	with(_this){
	    event_perform(ev_other,ev_user0);
	}



}
