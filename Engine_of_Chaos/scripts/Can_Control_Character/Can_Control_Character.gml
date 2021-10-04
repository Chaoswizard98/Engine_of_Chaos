function Can_Control_Character(_character){
	if(instance_exists(_character) && (_character != noone)){//test for null character first
	    if(global.In_Battle){//if we're in battle,
	        if((!_character.moving)&&(_character.allow_interaction)&&((_character.control_in_battle)||(global.Control_All_Units))){//check if we arent ai controlled
	            return true;
	        }
	    }
	    else{
	        if((!_character.moving)&&(_character.allow_interaction)&&(_character.player_controlled)){//otherwise use normal control check
	            return true;
	        }
	    }
	}
	return false;
}