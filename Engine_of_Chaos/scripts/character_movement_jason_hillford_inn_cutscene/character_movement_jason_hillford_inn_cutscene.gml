function Character_Movement_Jason_Hillford_Inn_Cutscene(_character){
	switch(_character.move_script_state){
	    case 0:
	        _character.move_script_state = 0;
	        _character.custom_move_script = "none";
			Face_Direction(_character,"Up");
	    break;
	}
}