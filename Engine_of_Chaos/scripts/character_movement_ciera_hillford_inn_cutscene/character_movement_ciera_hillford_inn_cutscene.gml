function Character_Movement_Ciera_Hillford_Inn_Cutscene(_character){
	switch(_character.move_script_state){
	    case 0:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",2,1);
	    break;
		case 1:
			_character.move_script_state += 1;
			Move_Character(_character,"Right",4,1);
		break;
	    case 2:
	        _character.move_script_state = 0;
	        _character.custom_move_script = "none";
	    break;
	}
}