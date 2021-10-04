function Character_Movement_Jason_01(_character){
	switch(_character.move_script_state){
	    case 0:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",5,2);
	    break;
	    case 1:
	        _character.move_script_state = 0;
	        _character.custom_move_script = "none";
	    break;
	}
}