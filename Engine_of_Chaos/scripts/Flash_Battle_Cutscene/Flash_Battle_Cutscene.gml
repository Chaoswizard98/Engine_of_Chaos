function Flash_Battle_Cutscene() {
	var _color = argument[0];
	var _time = argument[1];

	obj_Battle_Cutscene_Controller.screen_flash = true;
	obj_Battle_Cutscene_Controller.border_color = _color;
	obj_Battle_Cutscene_Controller.flash_timer = _time;



}
