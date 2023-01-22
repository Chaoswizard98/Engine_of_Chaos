function Create_Shop(_lookup_type,_shop_ID,_player,_npc,_object) {
	//shop type
	//player
	//npc
	//current object

	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Shop_Controller);
	_this.lookup_type = _lookup_type;
	_this.current_player = _player;//player trigger
	_this.current_npc = _npc;//npc trigger
	_this.current_object = _object;//current object (usually cutscene controller)

	_this.shop_ID = _this.current_npc.shop_ID[_shop_ID];//set shop ID
	_this.dialogue_ID = _this.current_npc.shop_dialogue_ID[_shop_ID];//set dialogue ID

	with(_this){
	    Shop_Configuration();//set up shop stock and variables
	    event_perform(ev_other,ev_user0);
	}
}