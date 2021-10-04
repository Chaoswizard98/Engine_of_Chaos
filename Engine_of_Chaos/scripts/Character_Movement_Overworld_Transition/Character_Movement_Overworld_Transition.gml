function Character_Movement_Overworld_Transition(_character){
	_character.allow_interaction = true;
	_character.custom_move_script = "none";
	with(obj_Character){
	    cutscene_mode = false;
	}
	obj_Camera.persistent = false;
	obj_Camera.halt_x_movement = false;
	obj_Camera.halt_y_movement = false;
}