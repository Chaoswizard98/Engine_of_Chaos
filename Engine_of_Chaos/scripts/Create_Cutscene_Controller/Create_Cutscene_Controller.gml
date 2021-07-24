function Create_Cutscene_Controller() {
	var _this;

	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cutscene_Controller);
	_this.script_ID = argument[0];//script we're calling
	_this.cutscene_type = argument[1];//'Cutscene' or 'NPC_Dialogue'

	//Optional arguments
	if(argument_count >= 3){
	    _this.state = argument[2];
	}
	if(argument_count >= 4){
	    _this.player_trigger = argument[3];
	}
	if(argument_count >= 5){
	    _this.npc_trigger = argument[4];
	}

	with(_this){//run the cutscene
	    event_perform(ev_other,ev_user0);
	}



}
