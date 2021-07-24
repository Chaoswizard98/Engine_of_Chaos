function Start_Battle_Cutscene() {
	var _object = argument[0];
	var _action = argument[1];
	var _attacker = argument[2];
	var _target = argument[3];
	var _inventory_slot = argument[4];
	var _inventory_level = argument[5];

	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Battle_Cutscene_Controller);

	_this.current_object = _object;
	_this.action = _action;
	_this.original_attacker = _attacker;
	_this.original_target = _target;
	_this.attacker = _attacker;
	_this.target = _target;
	_this.inventory_slot = _inventory_slot;
	_this.inventory_level = _inventory_level;

	Create_Screen_Fade(c_black,0,1,.04,"out",_this);//color, start, end, speed, direction, object



}
