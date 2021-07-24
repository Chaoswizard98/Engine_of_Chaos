function Jason_Movement_01() {
	//move_script_state

	switch(move_script_state){
	    case 0:
	        move_script_state += 1;
	        Move_Character(id,"Up",5,2);
	    break;
	    case 1:
	        move_script_state = 0;
	        custom_move_script = "none";
	    break;
	}



}
