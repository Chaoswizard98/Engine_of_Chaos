function Can_Spawn_Character(_spawner) {
	var _spawn_count = 0;

	with(obj_Character){
	    if(spawner_ID = _spawner){
	        _spawn_count += 1;
	    }
	}

	//if we can still spawn units, and we havent hit spawn cap yet, and timer complete
	if((_spawner.remaining_units != 0)&&((_spawner.max_active_units = -1)||(_spawner.max_active_units > _spawn_count))&&(_spawner.timer = 0)){
	    switch(_spawner.spawn_criteria){//check criteria
	        case "Round_Start"://trigger at round start if player is within region
	            if((_spawner.spawn_state <= Get_Current_Region())&&(obj_Battle_Controller.round_start)){
	                return true;
	            }
	        break;
	        case "Turn_Start"://trigger immediately after player enters region
	            if(_spawner.spawn_state <= Get_Current_Region()){
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
	}
	else{//did not spawn character, update timer
	    switch(_spawner.cooldown_type){
	        case "Round_Start":
	            if(obj_Battle_Controller.round_start){
	                _spawner.timer -= 1;
	            }
	        break;
	        case "Turn_Start":
	            _spawner.timer -= 1;
	        break;
	    }
	}

	return false;



}
