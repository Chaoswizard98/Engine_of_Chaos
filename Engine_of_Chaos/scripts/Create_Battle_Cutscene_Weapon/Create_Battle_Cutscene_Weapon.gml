function Create_Battle_Cutscene_Weapon() {
	var _object = argument[0];

	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Battle_Cutscene_Weapon);
	_this.cutscene_character = _object;

	return _this;



}
