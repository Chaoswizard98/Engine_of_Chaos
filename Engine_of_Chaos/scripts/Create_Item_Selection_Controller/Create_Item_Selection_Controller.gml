function Create_Item_Selection_Controller() {
	var _character = argument[0];
	var _object = argument[1];
	var _action = argument[2];

	var _target_character = noone;
	var _target_inventory_slot = 0;

	if(argument_count > 3){
	    _target_character = argument[3];
	}
	if(argument_count > 4){
	    _target_inventory_slot = argument[4];
	}

	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Item_Selection_Controller);
	_this.current_object = _object;
	_this.current_character = _character;
	_this.action = _action;
	_this.target_character = _target_character;
	_this.target_inventory_slot = _target_inventory_slot;

	with(_this){
	    inventory_slot[0] = 0;
	    inventory_slot[1] = 1;
	    inventory_slot[2] = 2;
	    inventory_slot[3] = 3;
    
	    event_perform(ev_other,ev_user0);
	}



}
