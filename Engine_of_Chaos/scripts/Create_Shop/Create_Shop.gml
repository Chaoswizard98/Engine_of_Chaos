function Create_Shop() {
	//shop type
	//player
	//npc
	//current object

	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Shop_Controller);
	_this.lookup_type = argument[0];
	_this.current_player = argument[2];//player trigger
	_this.current_npc = argument[3];//npc trigger
	_this.current_object = argument[4];//current object (usually cutscene controller)

	_this.shop_ID = _this.current_npc.shop_ID[argument[1]];//set shop ID
	_this.dialogue_ID = _this.current_npc.shop_dialogue_ID[argument[1]];//set dialogue ID
	//_this.voice_ID = _this.current_npc.voice_ID;//set voice of the npc

	with(_this){
	    Shop_Configuration();//set up shop stock and variables
	    event_perform(ev_other,ev_user0);
	}



}
