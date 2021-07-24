function Can_Reveal_Hidden_Character() {
	var _character = argument[0];
	var _valid_state = false;

	if(((_character.reveal_requires_exact_region) && (Player_Is_In_Region(_character.reveal_state)))||((_character.reveal_state <= Get_Current_Region())&&(!_character.reveal_requires_exact_region))){
	    _valid_state = true;
	}


	switch(_character.reveal_criteria){
	    case "Round_Start"://reveal at round start if player is within region
	        if((_valid_state)&&(obj_Battle_Controller.round_start)){
	            return true;
	        }
	    break;
	    case "Turn_Start"://reveal immediately after player enters region
	        if(_valid_state){
	            return true;
	        }
	    break;
	    case "Next_Action"://force immediate trigger.
	        return true;
	    break;
	    case "Next_Round"://force immediate trigger at round start
	        if(obj_Battle_Controller.round_start){
	            return true;
	        }
	    break;
	}

	return false;





}
